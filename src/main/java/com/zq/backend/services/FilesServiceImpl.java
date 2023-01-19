package com.zq.backend.services;

import cn.hutool.core.bean.BeanUtil;
import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.baomidou.mybatisplus.extension.service.impl.ServiceImpl;
import com.zq.backend.entity.Files;
import com.zq.backend.entity.Follow;
import com.zq.backend.entity.dto.FilesDTO;
import com.zq.backend.mapper.FilesMapper;
import com.zq.backend.utils.StringBuildUtils;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.List;
import java.util.Objects;

@Service
public class FilesServiceImpl extends ServiceImpl<FilesMapper, Files> implements FilesServiceInterface {

    @Value("${file.upload.path}")
    private String fileUploadPath;
    @Value("${file.download.path}")
    private String fileDownloadPath;


    @Resource
    FilesMapper filesMapper;

    @Override
    public FilesDTO uploadFile(MultipartFile file) throws IOException {
        // Get file name from upload file
        String originalFilename = file.getOriginalFilename();
        // Get type of upload file
        String type = FileUtil.extName(originalFilename);
        // Get size of upload file (with kb, default is b)
        long size = file.getSize() / 1024;
        // Store file into disk
        // ParentFile is used to check store directory
        File uploadParentFolder = new File(fileUploadPath);
        // Check whether the file directory exists. If not, create a new directory
        if(!uploadParentFolder.exists()){
            // If not, create a new directory
            uploadParentFolder.mkdirs();
        }
        // set unique uid for file
        String uuid = IdUtil.fastSimpleUUID();
        // combine uuid with file type for easier searching in future
        String fileUuid = uuid + StrUtil.DOT + type;
        String fileUrl;
        // build upload file
        File uploadFile = new File(fileUploadPath + fileUuid);
        // build md5 code for upload file
        String md5 = SecureUtil.md5(file.getInputStream());
        // check is there any replicated file in database
        String searchFileUrl = getUrlByMd5(md5);
        if (!searchFileUrl.equals("http://localhost:9090/file/download/unavailable.jpg")){ // if file have existed in database
            fileUrl = searchFileUrl; //directly get url
            uploadFile.delete();
        }else {
            // build url for file
            fileUrl = fileDownloadPath + fileUuid;
            // Store upload file into disk
            file.transferTo(uploadFile);
            // Store upload file into database
            Files databaseFile = new Files();
            databaseFile.setName(originalFilename);
            databaseFile.setMd5(md5);
            databaseFile.setType(type);
            databaseFile.setSize(size);
            databaseFile.setUrl(fileUrl);
            filesMapper.insert(databaseFile);
        }
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("md5", md5);
        FilesDTO filesDTO = new FilesDTO();
        BeanUtil.copyProperties(getOne(queryWrapper), filesDTO, true);
        return filesDTO;
    }

    @Override
    public void download(String fileUuid, HttpServletResponse response) throws IOException {
        ServletOutputStream os = response.getOutputStream();

        // use uuid to get file
        LambdaQueryWrapper<Files> wrapper = Wrappers.<Files>lambdaQuery().orderByAsc(Files::getId);
        String query = fileDownloadPath + fileUuid;
        wrapper.like(Files::getUrl, query);
        // execute query
        try{
            Files file = filesMapper.selectOne(wrapper);
            // build file container
            File uploadFile = null;
            // print download receipt
            System.out.println("download file: " + fileUploadPath + fileUuid);
            // deal with disable image
            if(Objects.equals(file.getEnable(), "0") || Objects.equals(file.getIsDelete(), "1")){
                String disableImg = "unavailable.jpg";
                uploadFile = new File(fileUploadPath + disableImg);
                fileUuid = disableImg;
            }else {
                uploadFile = new File(fileUploadPath + fileUuid);
            }
            // basic response format setting
            response.addHeader("Content-Disposition", "attachment;filename=" + URLEncoder.encode(fileUuid, "UTF-8"));
            response.setContentType("application/octet-stream");
            // read upload byte stream
            byte[] bytes = FileUtil.readBytes(uploadFile);
            os.write(bytes);
            os.flush();
            os.close();
        }catch (Exception e){
            System.out.println("fail to download file");
        }
    }

    @Override
    public String getUrlByMd5(String md5){
        String fileUrl = null;
        // check is there any replicated file in database
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("md5", md5);
        Files searchFile = filesMapper.selectOne(queryWrapper);
        if (searchFile != null){ // if file have existed in database
            fileUrl = searchFile.getUrl(); //directly get url
        }else {
            fileUrl = "http://localhost:9090/file/download/unavailable.jpg";
        }
        return fileUrl;
    }

    @Override
    public String getUrlById(String Id) {
        String fileUrl = null;
        // check is there any replicated file in database
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", Id);
        Files searchFile = filesMapper.selectOne(queryWrapper);
        if (searchFile != null){ // if file have existed in database
            fileUrl = searchFile.getUrl(); //directly get url
        }else {
            fileUrl = "http://localhost:9090/file/download/unavailable.jpg";
        }
        return fileUrl;
    }

    public boolean checkExisting(Integer Id) {
        String fileUrl = null;
        // check is there any replicated file in database
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("id", Id);

        List<Files> searchFile = list(queryWrapper);
        // if file have existed in database
        return searchFile.size() != 1; //directly get url
    }

    public boolean checkExistingByUrl(String url) {
        String fileUrl = null;
        // check is there any replicated file in database
        QueryWrapper<Files> queryWrapper = new QueryWrapper<>();
        queryWrapper.eq("url", url);

        List<Files> searchFile = list(queryWrapper);
        // if file have existed in database
        return searchFile.size() == 1; //directly get url
    }

    public String transferList(String url) {
        StringBuilder transferedUrl = new StringBuilder();
        for (Integer id: StringBuildUtils.splitData(url)){
            transferedUrl.append(getUrlById(id.toString())).append(";");
        }
        return transferedUrl.toString();
    }
}

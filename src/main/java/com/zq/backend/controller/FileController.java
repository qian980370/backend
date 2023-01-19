package com.zq.backend.controller;

import cn.hutool.core.io.FileUtil;
import cn.hutool.core.util.IdUtil;
import cn.hutool.core.util.StrUtil;
import cn.hutool.crypto.SecureUtil;
import com.baomidou.mybatisplus.core.conditions.query.LambdaQueryWrapper;
import com.baomidou.mybatisplus.core.conditions.query.QueryWrapper;
import com.baomidou.mybatisplus.core.toolkit.Wrappers;
import com.zq.backend.common.Result;
import com.zq.backend.entity.Files;
import com.zq.backend.entity.dto.FilesDTO;
import com.zq.backend.mapper.FilesMapper;
import com.zq.backend.services.FilesServiceImpl;
import com.zq.backend.services.InvitationServiceImpl;
import org.springframework.beans.factory.annotation.Value;
import org.springframework.web.bind.annotation.*;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import javax.servlet.ServletOutputStream;
import javax.servlet.http.HttpServletResponse;
import java.io.File;
import java.io.IOException;
import java.net.URLEncoder;
import java.util.Objects;

@RestController
@RequestMapping("/file")
public class FileController {


    @Resource
    FilesServiceImpl filesService;


    @PostMapping("/upload")
    public Result upload(@RequestParam MultipartFile file) throws IOException {
        return Result.success(filesService.uploadFile(file));
    }

    // down load url: http://localhost:9090/file/download/{fileUuid};
    @GetMapping("/download/{fileUuid}")
    public void download(@PathVariable String fileUuid, HttpServletResponse response) throws IOException {
        filesService.download(fileUuid, response);
    }


}

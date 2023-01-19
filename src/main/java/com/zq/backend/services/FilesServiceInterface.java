package com.zq.backend.services;

import com.baomidou.mybatisplus.extension.service.IService;
import com.zq.backend.entity.Files;
import com.zq.backend.entity.dto.FilesDTO;
import org.springframework.web.multipart.MultipartFile;

import javax.servlet.http.HttpServletResponse;
import java.io.IOException;

public interface FilesServiceInterface  extends IService<Files> {
    FilesDTO uploadFile(MultipartFile file) throws IOException;
    void download(String fileUuid, HttpServletResponse response) throws IOException;
    String getUrlByMd5(String md5);
    String getUrlById(String Id);
}

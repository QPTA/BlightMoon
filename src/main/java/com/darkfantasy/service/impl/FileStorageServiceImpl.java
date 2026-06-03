package com.darkfantasy.service.impl;

import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.util.UUID;

import org.springframework.stereotype.Service;
import org.springframework.web.multipart.MultipartFile;

import com.darkfantasy.service.FileStorageService;

@Service
public class FileStorageServiceImpl implements FileStorageService {

    @Override
    public String saveFile(MultipartFile file, String directory) throws IOException {
        String fileName = UUID.randomUUID()
                + "_"
                + file.getOriginalFilename();

        Path uploadDir = Paths.get("uploads", directory);

        Files.createDirectories(uploadDir);

        file.transferTo(
                uploadDir.resolve(fileName));

        return "/uploads/"
                + directory
                + "/"
                + fileName;
    }

}

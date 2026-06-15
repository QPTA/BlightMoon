package com.darkfantasy.controller;

import java.io.IOException;
import java.util.Map;

import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.multipart.MultipartFile;

import com.darkfantasy.service.FileStorageService;

import lombok.RequiredArgsConstructor;

@Controller
@RequiredArgsConstructor
public class ImageController {
    private final FileStorageService fileStorageService;

    @PostMapping("/api/upload")
    @ResponseBody
    public ResponseEntity<?> uploadImage(@RequestParam("image") MultipartFile file) {
        try {
            // Gọi Service để lưu file vào thư mục "editor" (nó sẽ tạo ra uploads/editor/)
            String fileUrl = fileStorageService.saveFile(file, "editors");

            // Trả về JSON cho Quill Frontend: {"url": "/uploads/editor/abc123hash.png"}
            return ResponseEntity.ok(Map.of("url", fileUrl));

        } catch (IllegalArgumentException e) {
            // Xử lý lỗi file rỗng theo Exception đã ném ở Service
            return ResponseEntity.badRequest().body(Map.of("error", e.getMessage()));
        } catch (IOException e) {
            // Xử lý lỗi đọc ghi file
            return ResponseEntity.status(HttpStatus.INTERNAL_SERVER_ERROR)
                    .body(Map.of("error", "Lỗi xử lý file trên server"));
        }
    }
}

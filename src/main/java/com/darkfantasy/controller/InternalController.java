package com.darkfantasy.controller;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import lombok.RequiredArgsConstructor;

@Controller
@RequestMapping("/api/moonblight/internal")
@RequiredArgsConstructor
public class InternalController {

    private final PasswordEncoder passwordEncoder;

    @GetMapping("/hash")
    @ResponseBody
    public String hash(
            @RequestParam String password) {

        return passwordEncoder.encode(password);
    }
}
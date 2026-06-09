package com.darkfantasy.security;

import java.io.IOException;

import org.springframework.security.core.Authentication;
import org.springframework.security.web.authentication.AuthenticationSuccessHandler;
import org.springframework.stereotype.Component;

import com.darkfantasy.entity.User;
import com.darkfantasy.entity.enums.Role;
import com.darkfantasy.repository.UserRepository;

import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import lombok.RequiredArgsConstructor;

@Component
@RequiredArgsConstructor
public class CustomLoginSuccessHandler
        implements AuthenticationSuccessHandler {

    private final UserRepository userRepository;

    @Override
    public void onAuthenticationSuccess(
            HttpServletRequest request,
            HttpServletResponse response,
            Authentication authentication)
            throws IOException {

        String username = authentication.getName();

        User user = userRepository
                .findUserByUsername(username)
                .orElseThrow();

        if (user.isMustChangePassword()) {

            response.sendRedirect(
                    "/user/moonblight/change-password");

            return;
        }

        switch (user.getRole()) {

            case ADMIN ->
                response.sendRedirect(
                        "/admin/moonblight/dashboard");

            case STAFF ->
                response.sendRedirect(
                        "/dashboard/moonblight");

            default ->
                response.sendRedirect("/");
        }
    }
}

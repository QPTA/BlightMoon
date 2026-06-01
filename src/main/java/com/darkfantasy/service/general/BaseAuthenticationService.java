package com.darkfantasy.service.general;

import java.util.Optional;

import com.darkfantasy.dto.user.LoginRequest;
import com.darkfantasy.dto.user.RegisterRequest;
import com.darkfantasy.dto.user.UserResponse;
import com.darkfantasy.entity.User;
import com.darkfantasy.repository.UserRepository;
import com.darkfantasy.security.SecurityConfig;
import com.darkfantasy.util.SecurityUtil;

import lombok.RequiredArgsConstructor;

@RequiredArgsConstructor
public abstract class BaseAuthenticationService {
    protected final UserRepository userRepository;
    protected final SecurityUtil securityUtil;
    protected final SecurityConfig securityConfig;

    public void register(RegisterRequest request) {
        if (isExistedUserOrEmail(request.getUserName())) {
            throw new IllegalArgumentException("Tên đăng nhập đã tồn tại!");
        }
        if (isExistedUserOrEmail(request.getEmail())) {
            throw new IllegalArgumentException("Email này đã được đăng ký!");
        }
        String hashPassword = securityConfig.passwordEncoder().encode(request.getPassword());
        userRepository.save(request.toEntity(hashPassword));
    }

    public UserResponse login(LoginRequest request) {
        User user = findUser(request.getUsername()).orElse(null);
        if (user == null || !securityConfig.passwordEncoder().matches(request.getPassword(), user.getPassword())) {
            throw new IllegalArgumentException("Sai tài khoản hoặc mật khẩu");
        }
        return UserResponse.fromEntity(user);
    }

    public Optional<User> findUser(String keyword) {
        if (keyword.contains("@")) {
            return userRepository.findUserByEmail(keyword);
        }
        return userRepository.findUserByUsername(keyword);
    }

    public boolean isExistedUserOrEmail(String keyword) {
        if (keyword.contains("@")) {
            return userRepository.existsByEmail(keyword);
        }
        return userRepository.existsByUsername(keyword);
    }
}

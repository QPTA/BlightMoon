package com.darkfantasy.service.impl;

import java.util.Optional;

import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.darkfantasy.dto.user.LoginRequest;
import com.darkfantasy.dto.user.RegisterRequest;
import com.darkfantasy.dto.user.UserResponse;
import com.darkfantasy.entity.User;
import com.darkfantasy.repository.UserRepository;
import com.darkfantasy.service.UserService;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class UserServiceImpl implements UserService {
    private final UserRepository userRepository;
    private final PasswordEncoder passwordEncoder;

    @Transactional
    @Override
    public void register(RegisterRequest request) {
        if (existsByKeyword(request.getUsername())) {
            throw new IllegalArgumentException("Tên đăng nhập đã tồn tại!");
        }
        if (existsByKeyword(request.getEmail())) {
            throw new IllegalArgumentException("Email này đã được đăng ký!");
        }
        String hashPassword = passwordEncoder.encode(request.getPassword());
        userRepository.save(request.toEntity(hashPassword));
    }

    @Override
    public UserResponse login(LoginRequest request) {
        User user = findUser(request.getLogin())
                .orElseThrow(() -> new IllegalArgumentException("Sai tài khoản hoặc mật khẩu"));
        if (!passwordEncoder.matches(request.getPassword(), user.getPassword())) {
            throw new IllegalArgumentException("Sai tài khoản hoặc mật khẩu");
        }
        return UserResponse.fromEntity(user);
    }

    @Override
    public void toggleAccount(String userName) {
        // TODO Auto-generated method stub
        throw new UnsupportedOperationException("Unimplemented method 'toggleAccount'");
    }

   
    private Optional<User> findUser(String keyword) {
        return userRepository.findUserByUsernameOrEmail(keyword, keyword);
    }

    
    private boolean existsByKeyword(String keyword) {
        return userRepository.existsByUsernameOrEmail(keyword, keyword);
    }

}

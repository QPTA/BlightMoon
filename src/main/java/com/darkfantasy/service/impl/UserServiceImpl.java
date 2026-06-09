package com.darkfantasy.service.impl;

import java.util.Optional;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.security.crypto.password.PasswordEncoder;
import org.springframework.stereotype.Service;

import com.darkfantasy.dto.gamecharacter.GameCharacterResponse;
import com.darkfantasy.dto.user.ChangePasswordRequest;
import com.darkfantasy.dto.user.LoginRequest;
import com.darkfantasy.dto.user.RegisterRequest;
import com.darkfantasy.dto.user.UserResponse;
import com.darkfantasy.entity.GameCharacter;
import com.darkfantasy.entity.User;
import com.darkfantasy.entity.enums.Role;
import com.darkfantasy.repository.UserRepository;
import com.darkfantasy.service.UserService;
import com.darkfantasy.util.SecurityUtil;

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
    @Transactional
    public void changeCurrentUserPassword(
            ChangePasswordRequest request) {

        User currentUser = getCurrentUser();

        if (!passwordEncoder.matches(
                request.getOldPassword(),
                currentUser.getPassword())) {

            throw new IllegalArgumentException(
                    "Mật khẩu hiện tại không đúng");
        }

        if (!request.getNewPassword()
                .equals(request.getConfirmPassword())) {

            throw new IllegalArgumentException(
                    "Mật khẩu xác nhận không khớp");
        }

        currentUser.setPassword(
                passwordEncoder.encode(
                        request.getNewPassword()));

        currentUser.setMustChangePassword(false);
    }

    private Optional<User> findUser(String keyword) {
        return userRepository.findUserByUsernameOrEmail(keyword, keyword);
    }

    private boolean existsByKeyword(String keyword) {
        return userRepository.existsByUsernameOrEmail(keyword, keyword);
    }

    private User findUser(Long id) {
        return id == null ? null : userRepository.getReferenceById(id);
    }

    @Override
    public UserResponse findAccountById(Long id) {
        if (id == null)
            throw new IllegalArgumentException("Id không thể là null");
        User user = userRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Không tìm thấy người dùng"));

        return UserResponse.fromEntity(user);
    }

    private User getCurrentUser() {

        String currentUsername = SecurityUtil.getCurrentUserName();

        if (currentUsername == null) {
            throw new IllegalStateException("Không tìm thấy người dùng hiện tại");
        }

        return userRepository
                .findUserByUsername(currentUsername)
                .orElseThrow(() -> new IllegalArgumentException("Không tìm thấy người dùng"));
    }

    @Override
    public Page<UserResponse> getAccounts(Pageable pageable) {
        return userRepository
                .findAllByOrderByIdAsc(pageable)
                .map(UserResponse::fromEntity);
    }

    @Transactional
    @Override
    public void lockUser(Long id) {

        User user = findUser(id);

        user.setActive(false);
    }

    @Transactional
    @Override
    public void unlockUser(Long id) {

        User user = findUser(id);

        user.setActive(true);
    }

    @Override
    public long count() {
        return userRepository.count();
    }

    @Override
    public long countActiveUsers() {
        return userRepository.countByIsActiveTrue();
    }

    @Override
    public long countInactiveUsers() {
        return userRepository.countByIsActiveFalse();
    }

}

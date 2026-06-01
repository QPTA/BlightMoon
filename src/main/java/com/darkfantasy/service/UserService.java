package com.darkfantasy.service;

import java.util.Optional;

import com.darkfantasy.dto.user.LoginRequest;
import com.darkfantasy.dto.user.RegisterRequest;
import com.darkfantasy.dto.user.UserResponse;
import com.darkfantasy.entity.User;

public interface UserService {
    UserResponse login(LoginRequest request);
    void register(RegisterRequest request);
    // void changeForgottenPassword(ResetPasswordRequest request);
    // void changeLoggedPassword(ChangePasswordRequest request);
    // void changeEmail(ChangeEmailRequest request);
    void toggleAccount(String userName);
    Optional<User> findUser(String keyword);
    boolean isExistedUserOrEmail(String keyword);
}

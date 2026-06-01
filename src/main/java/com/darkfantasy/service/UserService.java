package com.darkfantasy.service;


import com.darkfantasy.dto.user.LoginRequest;
import com.darkfantasy.dto.user.RegisterRequest;
import com.darkfantasy.dto.user.UserResponse;

public interface UserService {
    UserResponse login(LoginRequest request);
    void register(RegisterRequest request);
    // void changeForgottenPassword(ResetPasswordRequest request);
    // void changeLoggedPassword(ChangePasswordRequest request);
    // void changeEmail(ChangeEmailRequest request);
    void toggleAccount(String userName);

}

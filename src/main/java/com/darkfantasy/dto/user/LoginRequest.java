package com.darkfantasy.dto.user;

import com.darkfantasy.entity.User;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class LoginRequest {
    private String username;
    private String email;
    private String password;
    private String rePassword;

    public User toEntity() {
        return User.builder()
                .username(this.username)
                .email(this.email)
                .password(this.password)
                .build();
    }
    
    public static LoginRequest fromEntity(User user) {
        return LoginRequest.builder()
                .username(user.getUsername())
                .email(user.getEmail())
                .password(user.getPassword())
                .build();
    }
}

package com.darkfantasy.dto.user;

import com.darkfantasy.entity.User;
import com.darkfantasy.entity.enums.Role;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UserResponse {
    private Long id;
    private String username;
    private String email;
    private String fullName;
    private boolean isActive;
    private String role;

    public User toEntity() {
        return User.builder()
                .id(this.id)
                .username(this.username)
                .email(this.email)
                .fullName(this.fullName)
                .isActive(this.isActive)
                .role(Role.valueOf(this.role))
                .build();
    }
    public static UserResponse fromEntity(User user) {
        return UserResponse.builder()
                .id(user.getId())
                .username(user.getUsername())
                .email(user.getEmail())
                .fullName(user.getFullName())
                .isActive(user.isActive())
                .role(user.getRole().name())
                .build();
    }
}

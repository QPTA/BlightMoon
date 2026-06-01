/*
Thông tin định danh (Identity):

    id: Khóa chính (Primary Key).

Thông tin đăng nhập (Authentication):

    username (hoặc email): Tên đăng nhập, yêu cầu duy nhất (UNIQUE) và không được để trống.

    password: Mật khẩu. Sẽ lưu chuỗi đã được mã hóa (ví dụ: BCrypt qua Spring Security), do đó độ dài trường này nên để khá rộng (thường là VARCHAR(255)).

Thông tin phân quyền (Authorization):

    role: Lưu vai trò của user. Vì bạn đang dùng số nguyên (1 cho ADMIN, 2 cho STAFF), trường này sẽ là kiểu INT.

Thông tin quản trị trạng thái (Status - Bắt buộc cho CMS):

    isActive (hoặc isEnabled): Kiểu BOOLEAN. Trong hệ thống nội bộ, khi một Staff nghỉ việc, bạn tuyệt đối không được xóa (DELETE) record của họ trong database (để giữ nguyên vẹn lịch sử log hoặc dữ liệu cũ nếu sau này có nối bảng). Bạn chỉ chuyển isActive = false để chặn họ đăng nhập.

Thông tin hiển thị (Display - Tùy chọn):

    fullName: Tên hiển thị trên góc phải màn hình CMS (vd: "Xin chào, Nguyễn Văn A").
*/

package com.darkfantasy.entity;

import java.time.Instant;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import com.darkfantasy.entity.enums.Role;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "users")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class User {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "username", unique = true, nullable = false, length = 30)
    private String username;
    @Column(name = "email", unique = true, nullable = false, length = 255)
    private String email;
    @Column(name = "password", nullable = false, length = 255)
    private String password;
    @Column(name = "role", nullable = false)
    private Role role;
    @Column(name = "is_active", nullable = false)
    @Builder.Default
    private boolean isActive = true;
    @Column(name = "full_name", nullable = false, length = 255)
    private String fullName;
    @CreationTimestamp
    @Column(name = "created_at", nullable = false, updatable = false)
    private Instant createdAt;
    @UpdateTimestamp
    @Column(name = "updated_at", nullable = false)
    private Instant updatedAt;
}

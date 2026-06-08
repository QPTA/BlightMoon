package com.darkfantasy.dto.contact;

import com.darkfantasy.entity.ContactMessage;
import com.darkfantasy.entity.enums.ContactCategory;
import com.darkfantasy.entity.enums.ContactPlatform;

import jakarta.validation.constraints.Email;
import jakarta.validation.constraints.NotBlank;
import jakarta.validation.constraints.NotNull;
import jakarta.validation.constraints.Size;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CreateContactMessageRequest {

    @NotBlank(message = "Vui lòng nhập tên")
    private String visitorName;

    @NotBlank(message = "Vui lòng nhập email")
    @Email(message = "Email không hợp lệ")
    private String visitorEmail;

    @NotNull(message = "Vui lòng chọn danh mục")
    private ContactCategory category;

    @NotNull(message = "Vui lòng chọn nền tảng")
    private ContactPlatform platform;

    @NotBlank(message = "Vui lòng nhập nội dung")
    @Size(max = 5000)
    private String message;

    public ContactMessage toEntity() {
        return ContactMessage.builder()
                .visitorName(visitorName)
                .visitorEmail(visitorEmail)
                .category(category)
                .platform(platform)
                .message(message)
                .processed(false)
                .build();
    }
}

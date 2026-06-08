package com.darkfantasy.dto.contact;


import com.darkfantasy.entity.ContactMessage;
import com.darkfantasy.entity.enums.ContactCategory;
import com.darkfantasy.entity.enums.ContactPlatform;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@Builder
@NoArgsConstructor
@AllArgsConstructor
public class ContactMessageResponse {

    private Long id;

    private String visitorName;

    private String visitorEmail;

    private ContactCategory category;

    private ContactPlatform platform;

    private String message;

    private boolean processed;

    public static ContactMessageResponse fromEntity(ContactMessage message) {
        return ContactMessageResponse.builder()
                .id(message.getId())
                .visitorName(message.getVisitorName())
                .visitorEmail(message.getVisitorEmail())
                .category(message.getCategory())
                .platform(message.getPlatform())
                .message(message.getMessage())
                .processed(message.isProcessed())
                .build();
    }
}
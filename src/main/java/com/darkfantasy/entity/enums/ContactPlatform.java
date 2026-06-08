package com.darkfantasy.entity.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ContactPlatform {
    WINDOW(1, "Window"),
    LINUX(2, "Linux"),
    ANDROID(3, "Android"),
    IOS(4, "Ios"),
    OTHER(5, "Khác");

    private final int value;
    private final String displayName;

    public static ContactPlatform fromValue(int value) {
        for (ContactPlatform platform : ContactPlatform.values()) {
            if (platform.value == value) {
                return platform;
            }
        }
        throw new IllegalArgumentException("Không tìm thấy loại nền tảng: " + value);
    }
}

package com.darkfantasy.entity.enums;

import lombok.Getter;
import lombok.RequiredArgsConstructor;

@Getter
@RequiredArgsConstructor
public enum ContactCategory {
    TECHNICAL_SUPPORT(1, "Sự cố kĩ thuật"),
    BUG_REPORT(2, "Báo cáo lỗi"),
    ACCOUNT_BILLING(3, "Tài khoản / Mua hàng"),
    ACCESSIBILITY(4, "Khả năng tiếp cận"),
    CREATOR_PROGRAM(5, "Chương trình Creator"),
    PRESS_CONTACT(6, "Liên hệ báo chí"),
    OTHER(7, "Khác");

    private final int value;
    private final String displayName;

    public static ContactCategory fromValue(int value) {
        for (ContactCategory category : ContactCategory.values()) {
            if (category.value == value) {
                return category;
            }
        }
        throw new IllegalArgumentException("Không tìm thấy loại nhãn: " + value);
    }
}

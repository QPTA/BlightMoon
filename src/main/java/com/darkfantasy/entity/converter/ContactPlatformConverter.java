package com.darkfantasy.entity.converter;

import com.darkfantasy.entity.enums.ContactPlatform;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ContactPlatformConverter implements AttributeConverter<ContactPlatform, Integer> {
    @Override
    public Integer convertToDatabaseColumn(ContactPlatform attribute) {
        return attribute == null ? null : attribute.getValue();
    }

    @Override
    public ContactPlatform convertToEntityAttribute(Integer dbData) {
        if (dbData == null) {
            return null;
        }

        try {
            return ContactPlatform.fromValue(dbData);
        } catch (IllegalArgumentException e) {
            return ContactPlatform.OTHER;
        }
    }
}

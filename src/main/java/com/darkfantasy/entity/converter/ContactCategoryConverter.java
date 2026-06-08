package com.darkfantasy.entity.converter;

import com.darkfantasy.entity.enums.ContactCategory;

import jakarta.persistence.AttributeConverter;
import jakarta.persistence.Converter;

@Converter(autoApply = true)
public class ContactCategoryConverter implements AttributeConverter<ContactCategory, Integer>{

    @Override
    public Integer convertToDatabaseColumn(ContactCategory attribute) {
        return attribute == null? null:attribute.getValue();
    }

    @Override
    public ContactCategory convertToEntityAttribute(Integer dbData) {
        if (dbData == null) {
            return null;
        }

        try {
            return ContactCategory.fromValue(dbData);
        } catch (IllegalArgumentException e) {
            return ContactCategory.OTHER;
        }
    }

}

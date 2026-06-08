package com.darkfantasy.dto.faq;

import com.darkfantasy.entity.Faq;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CreateFaqRequest {
    private String title;
    private String content;
    private Integer priority;
    private boolean deleted;

    public Faq toEntity() {
        return Faq.builder()
                .title(this.title)
                .content(this.content)
                .priority(this.priority)
                .deleted(this.deleted)
                .build();
    }
}

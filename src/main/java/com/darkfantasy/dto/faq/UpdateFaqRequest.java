package com.darkfantasy.dto.faq;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpdateFaqRequest {
    private Long id;
    private String title;
    private String content;
    private Integer priority;
}

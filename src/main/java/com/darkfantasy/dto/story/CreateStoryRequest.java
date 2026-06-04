package com.darkfantasy.dto.story;

import com.darkfantasy.entity.Story;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class CreateStoryRequest {
    private String tag;
    private String title;
    private String content;
    private String image;
    private String quoteContent;
    private String quoteAuthor;
    private Integer priority;

    public Story toEntity() {
        return Story.builder()
                .tag(this.tag)
                .title(this.title)
                .content(this.content)
                .image(this.image)
                .quoteContent(this.quoteContent)
                .quoteAuthor(this.quoteAuthor)
                .build();
    }
}

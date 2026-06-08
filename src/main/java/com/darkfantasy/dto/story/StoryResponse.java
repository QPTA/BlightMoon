package com.darkfantasy.dto.story;

import com.darkfantasy.entity.Story;
import com.darkfantasy.util.TimeUtil;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class StoryResponse {
    private Long id;
    private String tag;
    private String title;
    private String content;
    private String image;
    private String quoteContent;
    private String quoteAuthor;
    private Integer priority;
    private String createdByUserName;
    private String createdAt;
    private String updatedByUserName;
    private String updatedAt;
    private boolean deleted;

    public static StoryResponse fromEntity(Story story) {
        return StoryResponse.builder()
                .id(story.getId())
                .tag(story.getTag())
                .title(story.getTitle())
                .content(story.getContent())
                .image(story.getImage())
                .quoteContent(story.getQuoteContent())
                .quoteAuthor(story.getQuoteAuthor())
                .priority(story.getPriority())
                .createdByUserName(story.getCreatedBy()!=null ? story.getCreatedBy().getUsername(): null)
                .createdAt(TimeUtil.formatInstant(story.getCreatedAt()))
                .updatedByUserName(story.getUpdatedBy()!=null ? story.getUpdatedBy().getUsername(): null)
                .updatedAt(TimeUtil.formatInstant(story.getUpdatedAt()))
                .deleted(story.isDeleted())
                .build();
    }

    public String getSummary() {
        if (content == null) {
            return "";
        }

        if (content.length() <= 350) {
            return content;
        }

        return content.substring(0, 350) + "...";
    }
}

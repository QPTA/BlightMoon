package com.darkfantasy.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.darkfantasy.dto.story.CreateStoryRequest;
import com.darkfantasy.dto.story.UpdateStoryRequest;
import com.darkfantasy.dto.story.StoryResponse;

public interface StoryService {
    StoryResponse getStoryById(Long id);
    StoryResponse createStory(CreateStoryRequest request);
    StoryResponse updateStory(UpdateStoryRequest request);
    void deleteStory(Long id);
    void restoreStory(Long id);

    Page<StoryResponse> getStories(Pageable pageable);
    List<StoryResponse> getStoriesDeletedFalse();
    StoryResponse getStoryDeletedFalseHighestPriority();

}

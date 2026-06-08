package com.darkfantasy.service.impl;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import com.darkfantasy.dto.story.CreateStoryRequest;
import com.darkfantasy.dto.story.UpdateStoryRequest;
import com.darkfantasy.entity.Story;
import com.darkfantasy.dto.story.StoryResponse;
import com.darkfantasy.repository.StoryRepository;
import com.darkfantasy.service.StoryService;

import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class StoryServiceImpl implements StoryService {
    private final StoryRepository storyRepository;

    @Override
    public Page<StoryResponse> getStories(Pageable pageable) {
        return storyRepository
                .findAllByOrderByIdAsc(pageable)
                .map(StoryResponse::fromEntity);
    }

    @Override
    public StoryResponse getStoryById(Long id) {
        return StoryResponse.fromEntity(findStory(id));
    }

    @Transactional
    @Override
    public StoryResponse createStory(CreateStoryRequest request) {
        if (request == null) {
            throw new IllegalArgumentException(
                    "Không thể tạo câu chuyện với dữ liệu null");
        }

        Story story = request.toEntity();

        Story savedStory = storyRepository.save(story);

        return StoryResponse.fromEntity(story);
    }

    @Transactional
    @Override
    public StoryResponse updateStory(UpdateStoryRequest request) {
        if (request == null) {
            throw new IllegalArgumentException(
                    "Không thể thay đổi câu chuyện với dữ liệu null");
        }
        Story story = findStory(request.getId());
        story.setTag(request.getTag());
        story.setTitle(request.getTitle());
        story.setContent(request.getContent());
        if (request.getImage() != null) {
            story.setImage(request.getImage());
        }
        story.setQuoteContent(request.getQuoteContent());
        story.setQuoteAuthor(request.getQuoteAuthor());
        story.setPriority(request.getPriority());

        return StoryResponse.fromEntity(story);
    }

    @Transactional
    @Override
    public void deleteStory(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Không thể xóa câu chuyện với ID null");
        }
        Story found = findStory(id);
        found.setDeleted(true);
    }

    @Transactional
    @Override
    public void restoreStory(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Không thể khôi phục câu chuyện với ID null");
        }
        Story found = findStory(id);
        found.setDeleted(false);
    }

    @Override
    public StoryResponse getStoryDeletedFalseHighestPriority() {
        return StoryResponse.fromEntity(storyRepository.findTopByDeletedFalseOrderByPriorityDesc());
    }

    @Override
    public List<StoryResponse> getStoriesDeletedFalse() {
        return storyRepository
                .findByDeletedFalseOrderByPriorityDesc()
                .stream()
                .map(StoryResponse::fromEntity)
                .toList();
    }

    private Story findStory(Long id) {
        return storyRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Không tìm thấy câu chuyện với ID: " + id));
    }

    @Override
    public long count() {
        return storyRepository.count();
    }
}

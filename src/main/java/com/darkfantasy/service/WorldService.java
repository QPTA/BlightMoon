package com.darkfantasy.service;



import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.darkfantasy.dto.world.CreateWorldRequest;
import com.darkfantasy.dto.world.UpdateWorldRequest;
import com.darkfantasy.dto.world.WorldResponse;

public interface WorldService {
    WorldResponse getWorldById(Long id);
    WorldResponse createWorld(CreateWorldRequest request);
    WorldResponse updateWorld(UpdateWorldRequest request);
    void deleteWorld(Long id);
    void restoreWorld(Long id);

    Page<WorldResponse> getWorlds(Pageable pageable);
    List<WorldResponse> getWorldsDeletedFalse();
    WorldResponse getWorldDeletedFalseHighestPriority();

    long count();
}

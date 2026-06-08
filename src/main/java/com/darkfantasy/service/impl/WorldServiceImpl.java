package com.darkfantasy.service.impl;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.stereotype.Service;

import com.darkfantasy.dto.world.CreateWorldRequest;
import com.darkfantasy.dto.world.UpdateWorldRequest;
import com.darkfantasy.dto.world.WorldResponse;
import com.darkfantasy.entity.World;
import com.darkfantasy.repository.WorldRepository;
import com.darkfantasy.service.WorldService;

import jakarta.transaction.Transactional;
import lombok.RequiredArgsConstructor;

@Service
@RequiredArgsConstructor
public class WorldServiceImpl implements WorldService {

    private final WorldRepository worldRepository;

    @Override
    public Page<WorldResponse> getWorlds(Pageable pageable) {
        return worldRepository
                .findAllByOrderByIdAsc(pageable)
                .map(WorldResponse::fromEntity);
    }

    @Override
    public WorldResponse getWorldById(Long id) {
        return WorldResponse.fromEntity(findWorld(id));
    }

    @Transactional
    @Override
    public WorldResponse createWorld(CreateWorldRequest request) {
        if (request == null) {
            throw new IllegalArgumentException(
                    "Không thể tạo thế giới với dữ liệu null");
        }

        World world = request.toEntity();

        World savedWorld = worldRepository.save(world);

        return WorldResponse.fromEntity(world);
    }

    @Transactional
    @Override
    public WorldResponse updateWorld(UpdateWorldRequest request) {
        if (request == null) {
            throw new IllegalArgumentException(
                    "Không thể thay đổi thế giới với dữ liệu null");
        }
        World world = findWorld(request.getId());
        world.setTag(request.getTag());
        world.setTitle(request.getTitle());
        world.setContent(request.getContent());
        world.setPriority(request.getPriority());
        if (request.getImage() != null) {
            world.setImage(request.getImage());
        }
        return WorldResponse.fromEntity(world);
    }

    @Transactional
    @Override
    public void deleteWorld(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Không thể xóa thế giới với ID null");
        }
        World found = findWorld(id);
        found.setDeleted(true);
    }

    @Transactional
    @Override
    public void restoreWorld(Long id) {
        if (id == null) {
            throw new IllegalArgumentException("Không thể khôi phục thế giới với ID null");
        }
        World found = findWorld(id);
        found.setDeleted(false);
    }

    @Override
    public WorldResponse getWorldDeletedFalseHighestPriority() {
        return WorldResponse.fromEntity(worldRepository.findTopByDeletedFalseOrderByPriorityDesc());
    }

    @Override
    public List<WorldResponse> getWorldsDeletedFalse() {
        return worldRepository
                .findByDeletedFalseOrderByPriorityDesc()
                .stream()
                .map(WorldResponse::fromEntity)
                .toList();
    }

    private World findWorld(Long id) {
        return worldRepository.findById(id)
                .orElseThrow(() -> new IllegalArgumentException("Không tìm thấy thế giới với ID: " + id));
    }

    @Override
    public long count() {
        return worldRepository.count();
    }



}

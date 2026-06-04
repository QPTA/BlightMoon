package com.darkfantasy.dto.world;

import com.darkfantasy.entity.World;

import jakarta.validation.constraints.Max;
import jakarta.validation.constraints.Min;
import jakarta.validation.constraints.NotNull;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class WorldResponse {
    private Long id;
    private String tag;
    private String title;
    private String content;
    private String image;
    @NotNull
    @Min(0)
    @Max(100)
    private Integer priority;
    private boolean deleted;

    public static WorldResponse fromEntity(World world) {
        return WorldResponse.builder()
                .id(world.getId())
                .tag(world.getTag())
                .title(world.getTitle())
                .content(world.getContent())
                .image(world.getImage())
                .priority(world.getPriority())
                .deleted(world.isDeleted())
                .build();
    }
}

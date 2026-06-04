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
public class CreateWorldRequest {
    private String tag;
    private String title;
    private String content;
    @NotNull
    @Min(0)
    @Max(100)
    private Integer priority;
    private String image;

    public World toEntity() {
        return World.builder()
                .tag(this.tag)
                .title(this.title)
                .content(this.content)
                .priority(this.priority)
                .image(this.image)
                .build();
    }
}

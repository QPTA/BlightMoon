package com.darkfantasy.dto.gamecharacter;

import com.darkfantasy.entity.GameCharacter;

import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@NoArgsConstructor
@AllArgsConstructor
@Builder
public class UpdateGameCharacterRequest {
    private Long id;
    private String name;
    private String race;
    private String description;
    private String quote;
    private String image;
    private Integer priority;

    public GameCharacter toEntity(){
        return GameCharacter.builder()
        .id(this.id)
        .name(this.name)
        .race(this.race)
        .description(this.description)
        .quote(this.quote)
        .image(this.image)
        .priority(this.priority)
        .build();
    }
}

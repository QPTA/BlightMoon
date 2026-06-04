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
public class GameCharacterResponse {
    private Long id;
    private String name;
    private String race;
    private String description;
    private String quote;
    private String image;
    private Integer priority;
    private boolean deleted;

    public static GameCharacterResponse fromEntity(GameCharacter character) {
        return GameCharacterResponse.builder()
                .id(character.getId())
                .name(character.getName())
                .race(character.getRace())
                .description(character.getDescription())
                .quote(character.getQuote())
                .image(character.getImage())
                .priority(character.getPriority())
                .deleted(character.isDeleted())
                .build();
    }
}

package com.darkfantasy.service;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;

import com.darkfantasy.dto.gamecharacter.CreateGameCharacterRequest;
import com.darkfantasy.dto.gamecharacter.GameCharacterResponse;
import com.darkfantasy.dto.gamecharacter.UpdateGameCharacterRequest;

public interface GameCharacterService {
    GameCharacterResponse getGameCharacterById(Long id);
    GameCharacterResponse createGameCharacter(CreateGameCharacterRequest request);
    GameCharacterResponse updateGameCharacter(UpdateGameCharacterRequest request);
    void deleteCharacter(Long id);
    void restoreCharacter(Long id);

    Page<GameCharacterResponse> getCharacters(Pageable pageable);
    List<GameCharacterResponse> getCharactersDeletedFalse();
    List<GameCharacterResponse> getCharactersLimit(int limit);

    long count();
}

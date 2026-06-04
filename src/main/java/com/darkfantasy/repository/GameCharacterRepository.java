package com.darkfantasy.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.darkfantasy.entity.GameCharacter;

@Repository
public interface GameCharacterRepository extends JpaRepository<GameCharacter, Long>{
    Page<GameCharacter> findAllByOrderByPriorityDesc(Pageable pageable);
    Page<GameCharacter> findByDeletedFalseOrderByPriorityDesc(Pageable pageable);
    Page<GameCharacter> findAllByOrderByIdAsc(Pageable pageable);
    List<GameCharacter> findByDeletedFalseOrderByPriorityDesc();
}

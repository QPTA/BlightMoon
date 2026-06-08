package com.darkfantasy.repository;

import java.util.List;

import org.springframework.data.domain.Page;
import org.springframework.data.domain.Pageable;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.darkfantasy.entity.Faq;

@Repository
public interface FaqRepository extends JpaRepository<Faq, Long>{
    Page<Faq> findAllByOrderByPriorityDesc(Pageable pageable);
    Page<Faq> findByDeletedFalseOrderByPriorityDesc(Pageable pageable);
    Page<Faq> findAllByOrderByIdAsc(Pageable pageable);
    List<Faq> findByDeletedFalseOrderByPriorityDesc();
}
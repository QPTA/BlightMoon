package com.darkfantasy.repository;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import com.darkfantasy.entity.Article;

@Repository
public interface ArticleRepository extends JpaRepository<Article, Long> {

}

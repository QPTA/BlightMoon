package com.darkfantasy.entity;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.Table;
import lombok.AllArgsConstructor;
import lombok.Builder;
import lombok.Getter;
import lombok.NoArgsConstructor;
import lombok.Setter;

@Entity
@Table(name = "stories")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class Story {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "tag")
    private String tag;
    @Column(name = "title")
    private String title;
    @Column(name = "content", columnDefinition = "LONGTEXT")
    private String content;
    @Column(name = "image")
    private String image;
    @Column(name = "quote_content", columnDefinition = "LONGTEXT")
    private String quoteContent;
    @Column(name = "quote_author")
    private String quoteAuthor;
    @Column(name = "priority")
    private Integer priority;
    @Column(name = "deleted")
    private boolean deleted;

}

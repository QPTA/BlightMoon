package com.darkfantasy.entity;

import java.time.Instant;

import org.hibernate.annotations.CreationTimestamp;
import org.hibernate.annotations.UpdateTimestamp;

import jakarta.persistence.Column;
import jakarta.persistence.Entity;
import jakarta.persistence.FetchType;
import jakarta.persistence.GeneratedValue;
import jakarta.persistence.GenerationType;
import jakarta.persistence.Id;
import jakarta.persistence.JoinColumn;
import jakarta.persistence.ManyToOne;
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
    @Column(name = "tag", nullable = true)
    private String tag;
    @Column(name = "title", nullable = false)
    private String title;
    @Column(name = "content", columnDefinition = "LONGTEXT", nullable = false)
    private String content;
    @Column(name = "image", nullable = true)
    private String image;
    @Column(name = "quote_content", columnDefinition = "LONGTEXT", nullable = true)
    private String quoteContent;
    @Column(name = "quote_author", nullable = false)
    private String quoteAuthor;
    @Column(name = "priority", nullable = false)
    private Integer priority;
    @Builder.Default
    @Column(name = "deleted")
    private boolean deleted = false;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "created_by", nullable = false, updatable = false)
    private User createdBy;

    @CreationTimestamp
    @Column(name = "created_at", nullable = false, updatable = false)
    private Instant createdAt;

    @ManyToOne(fetch = FetchType.LAZY)
    @JoinColumn(name = "updated_by", nullable = true)
    private User updatedBy;

    @UpdateTimestamp
    @Column(name = "updated_at", nullable = true)
    private Instant updatedAt;

}

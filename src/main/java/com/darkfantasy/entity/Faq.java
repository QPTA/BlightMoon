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
@Table(name = "faqs")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class Faq {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "title", length = 500, nullable = false)
    private String title;
    @Column(name = "content", columnDefinition = "LONGTEXT", nullable = false)
    private String content;
    @Column(name = "priority")
    private Integer priority;
    @Column(name = "deleted")
    private boolean deleted;

}

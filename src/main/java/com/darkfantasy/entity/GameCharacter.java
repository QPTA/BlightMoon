/*
Priority đại diện cho mức độ ưu tiên của nhân vật đối với cốt truyện.
Càng lên cao thì mức độ quan trọng của nhân vật càng lớn.
Tính tại thang điểm 100(quan trọng nhất) xuống 0 (Không quan trọng một chút nào)
*/

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
@Table(name = "characters")
@NoArgsConstructor
@AllArgsConstructor
@Getter
@Setter
@Builder
public class GameCharacter {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    @Column(name = "id")
    private Long id;
    @Column(name = "name", nullable = false)
    private String name;
    @Column(name = "race", nullable = true)
    private String race;
    @Column(name = "description", columnDefinition = "LONGTEXT", nullable = false)
    private String description;
    @Column(name = "quote", nullable = true)
    private String quote;
    @Column(name = "image", nullable = true)
    private String image;
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

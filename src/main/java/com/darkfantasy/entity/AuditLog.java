package com.darkfantasy.entity;

import java.time.LocalDateTime;

import org.hibernate.annotations.CreationTimestamp;

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

// @Entity
// @Table(name = "audit_logs")
// @Getter
// @Setter
// @NoArgsConstructor
// @AllArgsConstructor
// @Builder
public class AuditLog {

    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Column(name = "entity_id")
    private Long entityId;

    @Column(name = "entity_type")
    private Long entityType;

    @Column(name = "action")
    private Long action;

    @Column(name = "description", columnDefinition = "LONGTEXT")
    private Long description;

    @CreationTimestamp
    @Column(name = "created_at")
    private LocalDateTime createdAt;

    @Column(name = "user_id")
    private Long userId;
}

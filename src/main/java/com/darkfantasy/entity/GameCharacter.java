/*
Priority đại diện cho mức độ ưu tiên của nhân vật đối với cốt truyện.
Càng lên cao thì mức độ quan trọng của nhân vật càng lớn.
Tính tại thang điểm 100(quan trọng nhất) xuống 0 (Không quan trọng một chút nào)
*/

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
    @Column(name = "race")
    private String race;
    @Column(name = "description", columnDefinition = "TEXT")
    private String description;
    @Column(name = "quote")
    private String quote;
    @Column(name = "image")
    private String image;
    @Column(name = "priority")
    private Integer priority;
    @Column(name = "deleted")
    private boolean deleted;
}

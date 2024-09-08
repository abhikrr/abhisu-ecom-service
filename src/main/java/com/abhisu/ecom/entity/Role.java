package com.abhisu.ecom.entity;

import com.abhisu.ecom.emun.ERole;
import jakarta.persistence.*;
import lombok.*;

@Entity
@Table(name = "role_tbl")
@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@EqualsAndHashCode
@ToString
public class Role {
    @Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
    private Long id;

    @Enumerated(EnumType.STRING)
    private ERole name;  // Enum for role types like ADMIN, USER

}

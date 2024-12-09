package com.abhisu.ecom.batch.entity;

import jakarta.persistence.Entity;
import lombok.*;


@Getter
@Setter
@NoArgsConstructor
@AllArgsConstructor
@ToString
public class Coffee {
    private String brand;
    private String origin;
    private String characteristics;
}

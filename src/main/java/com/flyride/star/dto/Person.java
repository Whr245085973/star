package com.flyride.star.dto;



import lombok.Data;
import lombok.Getter;
import lombok.Setter;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.Id;

/**
 * @description:
 * @author: Mr.Wu
 * @create: 2020/3/19 17:22
 **/

@Entity
@Data
public class Person {
    @Id
    @GeneratedValue
    private Long id;

    @Column(name = "name", nullable = true, length = 20)
    private String name;

    @Column(name = "age", nullable = true, length = 4)
    private int age;

}

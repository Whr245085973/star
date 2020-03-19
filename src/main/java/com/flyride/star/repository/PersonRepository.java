package com.flyride.star.repository;

import com.flyride.star.dto.Person;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @description:
 * @author: Mr.Wu
 * @create: 2020/3/19 17:25
 **/
public interface PersonRepository extends JpaRepository<Person,Long> {

}

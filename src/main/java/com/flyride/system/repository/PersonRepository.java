package com.flyride.system.repository;

import com.flyride.system.model.Person;
import org.springframework.data.jpa.repository.JpaRepository;

/**
 * @description:
 * @author: Mr.Wu
 * @create: 2020/3/19 17:25
 **/
public interface PersonRepository extends JpaRepository<Person,Long> {

}

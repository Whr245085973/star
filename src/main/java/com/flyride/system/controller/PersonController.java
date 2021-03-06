package com.flyride.system.controller;

import com.flyride.system.model.Person;
import com.flyride.system.repository.PersonRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

/**
 * @description:
 * @author: Mr.Wu
 * @create: 2020/3/19 17:27
 **/
@RestController
@RequestMapping(value = "person")
public class PersonController {
    @Autowired
    private PersonRepository personRepository;

    @PostMapping(path = "addPerson")
    public void addPerson(@RequestBody Person person){
        personRepository.save(person);
    }

    @DeleteMapping(path = "deletePerson")
    public void deletePerson(Long id){
        personRepository.deleteById(id);
    }

}

package com.flyride.system.controller;

import com.flyride.system.service.RedisService;
import com.flyride.system.service.impl.RedisServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @description:
 * @author: Mr.Wu
 * @create: 2020/3/20 13:45
 **/
@RestController
@RequestMapping(value = "redis")
public class RedisController {
    @Autowired
    private RedisService redisService;

    @PostMapping(path = "saveToken")
    public Object saveToken(String name){
        redisService.setValue("1",name);
        Object value = redisService.getValue("1");
        return value;
    }
}

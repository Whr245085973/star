package com.flyride.system.controller;

import com.flyride.system.service.RedisService;
import org.apache.shiro.authz.annotation.RequiresPermissions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author CREATED BY W.H.R on 2020/3/25 14:33
 */
@RestController
@RequestMapping(value = "redis")
public class RedisController {

    @Autowired
    private RedisService redisService;

    /**
     * @param name:
     * @return java.lang.Object
     * @author CREATED BY W.H.R on 2020/3/25 16:35
     */
    @PostMapping(path = "saveToken")
    @RequiresPermissions("center_ltv_list")
    public Object saveToken(String name){
        redisService.setValue("1",name);
        Object value = redisService.getValue("1");
        return value;
    }

}

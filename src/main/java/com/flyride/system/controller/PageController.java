package com.flyride.system.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * @description:
 * @author: Mr.Wu
 * @create: 2020/3/19 15:15
 **/
@Controller
public class PageController {
    @RequestMapping("/{page}")
    public String getPage(@PathVariable String page){
        return page;
    }
}

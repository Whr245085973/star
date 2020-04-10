package com.flyride.system.controller;

import com.flyride.system.logging.annotation.Log;
import org.apache.shiro.authz.annotation.RequiresPermissions;
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
    @RequiresPermissions("center_ltv_list")
    @Log(value = "page")
    public String getPage(@PathVariable String page){
        return page;
    }
}

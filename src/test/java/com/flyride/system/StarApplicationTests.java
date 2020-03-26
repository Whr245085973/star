package com.flyride.system;

import com.flyride.system.modules.system.dao.SysUserDOMapper;
import com.flyride.system.modules.system.model.SysUserDO;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

@RunWith(SpringRunner.class)
@SpringBootTest
class StarApplicationTests {

    @Autowired
    private SysUserDOMapper sysUserDOMapper;

    @Test
    void contextLoads() {
        Long id = 43L;
        SysUserDO sysUserDO = sysUserDOMapper.selectByPrimaryKey(id);
        System.out.println(sysUserDO.getUsername());
    }

}

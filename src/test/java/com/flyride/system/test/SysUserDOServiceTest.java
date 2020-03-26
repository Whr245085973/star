package com.flyride.system.test;

import com.flyride.system.modules.system.dao.SysUserDOMapper;
import com.flyride.system.modules.system.model.SysRoleDO;
import com.flyride.system.modules.system.model.SysUserDO;
import com.flyride.system.modules.system.service.SysUserDOService;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;
import org.springframework.test.context.junit4.SpringRunner;

import java.util.HashSet;
import java.util.Set;

/**
 * @author CREATED BY L.C.Y on 2019-4-2
 */
@RunWith(SpringRunner.class)
@SpringBootTest
public class SysUserDOServiceTest {
    @Autowired
    SysUserDOService sysUserDOService;

    @Autowired
    private SysUserDOMapper sysUserDOMapper;

    @Test
    public void contextLoads() {
        Long id = 43L;
        SysUserDO sysUserDO = sysUserDOMapper.selectByPrimaryKey(id);
        System.out.println(sysUserDO.getUsername());
    }

    @Test
    public void insert() {
        Set<SysRoleDO> roles = new HashSet<>();
        for (int i = 0; i < 5; i++) {
            SysRoleDO role = new SysRoleDO();
            role.setRoleId(i);
            roles.add(role);
        }
        SysUserDO user = new SysUserDO();
        user.setUsername("测试01")
                .setPassword("123456")
                .setStatus((byte) 1)
                .setRoles(roles);
        System.out.println(sysUserDOService.insertSelective(user));

    }

    @Test
    public void update() {
        Set<SysRoleDO> roles = new HashSet<>();
        for (int i = 0; i < 5; i++) {
            SysRoleDO role = new SysRoleDO();
            role.setRoleId(i + 7);
            roles.add(role);
        }
        SysUserDO user = new SysUserDO();
        user.setUserId(7L)
                .setUsername("test")
                .setPassword("123456")
                .setStatus((byte) 1)
                .setRoles(roles);

        System.out.println(sysUserDOService.updateByPrimaryKeySelective(user));
    }

    @Test
    public void getAndList() {
        System.out.println(sysUserDOService.selectByPrimaryKey(8L));
        System.out.println("=========================================");
        System.out.println(sysUserDOService.getUserByUsername("Test"));
        System.out.println("=========================================");
        System.out.println(sysUserDOService.listSysUser(new SysUserDO().setUsername("测试").setStatus((byte) 0), 1, 10));
    }

    @Test
    public void delete() {
        System.out.println(sysUserDOService.deleteByPrimaryKey(6L));
    }

    @Test
    public void updatePassword() {
        System.out.println(sysUserDOService.updatePassword(new SysUserDO().setUserId(2L).setPassword("567890")));
    }

}
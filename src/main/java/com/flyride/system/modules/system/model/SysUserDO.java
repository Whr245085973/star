package com.flyride.system.modules.system.model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.Set;

@Data
@Accessors(chain = true)
public class SysUserDO {
    private Long userId;

    private String username;

    private String password;

    private Byte status;

    private Date gmtCreate;

    private Date gmtModified;

    /**
     * 关联的角色, 多对多关系
     */
    private Set<SysRoleDO> roles;

    /**
     * 角色Id，用于关联表
     */
    private Integer roleId;
}
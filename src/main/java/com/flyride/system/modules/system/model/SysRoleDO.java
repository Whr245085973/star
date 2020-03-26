package com.flyride.system.modules.system.model;

import lombok.Data;
import lombok.experimental.Accessors;

import java.util.Date;
import java.util.List;

@Data
@Accessors(chain = true)
public class SysRoleDO {
    private Integer roleId;

    private String roleName;

    private Date gmtCreate;

    private Date gmtModified;

    private String remark;

    /**
     * 关联的权限，多对多
     */
    private List<SysMenuDO> menus;

    /**
     * 关联的权限ID
     */
    private Integer menuId;
}
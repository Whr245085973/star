package com.flyride.system.modules.system.service;

import com.flyride.system.modules.system.model.MenuTreeEntity;
import com.flyride.system.modules.system.model.SysMenuDO;

import java.util.List;

/**
 * @author CREATED BY L.C.Y on 2019-4-3
 */
public interface SysMenuDOService {

    int deleteByPrimaryKey(Integer menuId);

    int insertSelective(SysMenuDO record);

    /**
     * 菜单权限列表，不分页，可根据名称查询
     * @return 列表
     */
    List<SysMenuDO> listMenu(SysMenuDO record);

    int updateByPrimaryKeySelective(SysMenuDO record);

    /**
     * 遍历出菜单，并按照结构整理
     * @param menus 菜单
     * @return 树形菜单结构
     */
    List<MenuTreeEntity> convertMenuToTree(List<SysMenuDO> menus);
}

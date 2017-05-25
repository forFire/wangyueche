package com.sichuang.service.impl.dao;

import java.util.List;

import com.sichuang.bean.entity.SysRolePermission;

/**
 * Created by gaoshiwei on 2017/3/30.
 * 角色-权限Dao
 */
public interface RolePermissionDao {

	SysRolePermission selectById(long id);

	List<SysRolePermission> selectByRoleId(long id);

	int insert(SysRolePermission sysRolePermission);

	int update(SysRolePermission sysRolePermission);

	int delectByRolePermission(SysRolePermission sysRolePermission);

	int deleteByRoleId(long roleId);
	
	int countByRoleId(long roleId);
	
	List<SysRolePermission> listForRoleId(List<Long> idList);

}

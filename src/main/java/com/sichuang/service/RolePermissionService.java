package com.sichuang.service;

import com.sichuang.bean.entity.SysRolePermission;
import com.sichuang.bean.vo.Result;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/3/20.
 */
public interface RolePermissionService {

	SysRolePermission query(long id);

	List<SysRolePermission> queryByRoleId(long id);

	int save(long roleId, List<Long> permissionList);

	int update(long roleId, List<Long> permissionList);
	
	int delete(long roleId);

	int deleteByRolePermission(SysRolePermission sysRolePermission);
	
	List<SysRolePermission> listForRoleId(List<Long> idList);

}

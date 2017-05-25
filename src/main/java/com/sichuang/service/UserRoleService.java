package com.sichuang.service;

import com.sichuang.bean.entity.SysUserRole;
import com.sichuang.bean.vo.Result;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/3/20.
 */
public interface UserRoleService {

	List<SysUserRole> queryByUserId(long id);
	//新增方法
	List<SysUserRole> queryByRoleId(long id);

	SysUserRole queryByUserRole(SysUserRole sysUserRole);

	int insert(SysUserRole sysUserRole);

	int update(SysUserRole sysUserRole);

	int updateByUserId(long userId, List<Long> roles);
	
	int deleteByUserRole(SysUserRole sysUserRole);
}

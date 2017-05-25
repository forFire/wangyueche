package com.sichuang.service.impl;

import java.util.List;

import com.sichuang.bean.entity.SysUserRole;
import com.sichuang.bean.vo.Result;
import com.sichuang.service.UserRoleService;
import com.sichuang.service.impl.dao.UserRoleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserRoleServiceImpl implements UserRoleService {

	@Autowired
	private UserRoleDao dao;

	/**
	 * 新增方法2017.4.5  Gavin
	 * @param id
	 * @return
	 */
	@Override
	public List<SysUserRole> queryByRoleId(long id) {
		return dao.selectByRoleId(id);
	}

	@Override
	public List<SysUserRole> queryByUserId(long id) {
		return dao.selectByUserId(id);
	}

	@Override
	public SysUserRole queryByUserRole(SysUserRole sysUserRole) {
		return dao.selectByUserRole(sysUserRole);
	}

	@Override
	public int insert(SysUserRole sysUserRole) {
		return dao.insert(sysUserRole);
	}

	@Override
	public int update(SysUserRole sysUserRole) {
		return dao.update(sysUserRole);
	}

	@Override
	public int deleteByUserRole(SysUserRole sysUserRole) {
		return dao.deleteByUserRole(sysUserRole);
	}

	@Override
	public int updateByUserId(long userId, List<Long> roles) {
		SysUserRole sysUserRole = new SysUserRole();
		int resultNum=dao.deleteByUserId(userId);
		for (Long rolesId : roles) {
			sysUserRole.setUserId(userId);
			sysUserRole.setRoleId(rolesId);
			dao.insert(sysUserRole);
		}
		return resultNum;
	}
}

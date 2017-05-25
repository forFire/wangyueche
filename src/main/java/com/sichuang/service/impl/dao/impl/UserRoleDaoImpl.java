package com.sichuang.service.impl.dao.impl;

import java.util.Date;
import java.util.List;

import com.sichuang.bean.entity.SysUserRole;
import com.sichuang.bean.entity.SysUserRoleExample;
import com.sichuang.service.impl.dao.UserRoleDao;
import com.sichuang.service.impl.dao.impl.mybatis.SysUserRoleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

@Repository
public class UserRoleDaoImpl implements UserRoleDao {

	@Autowired
	private SysUserRoleMapper mapper;

	/**
	 * 新增方法2017.4.5  Gavin
	 * @param id
	 * @return
	 */
	@Override
	public List<SysUserRole> selectByRoleId(long id) {
		SysUserRoleExample example = new SysUserRoleExample();
		SysUserRoleExample.Criteria criteria = example.createCriteria();
		criteria.andRoleIdEqualTo(id);
		return mapper.selectByExample(example);

	}

	@Override
	public List<SysUserRole> selectByUserId(long id) {
		SysUserRoleExample example = new SysUserRoleExample();
		SysUserRoleExample.Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(id);
		return mapper.selectByExample(example);
	}

	@Override
	public int insert(SysUserRole sysUserRole) {
		Date date = new Date();
		sysUserRole.setCreateTime(date);
		sysUserRole.setUpdateTime(date);
		return mapper.insertSelective(sysUserRole);
	}

	@Override
	public int update(SysUserRole sysUserRole) {
		sysUserRole.setUpdateTime(new Date());
		return mapper.updateByPrimaryKeySelective(sysUserRole);
	}

	@Override
	public int deleteByUserRole(SysUserRole sysUserRole) {
		SysUserRoleExample example = new SysUserRoleExample();
		SysUserRoleExample.Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(sysUserRole.getUserId());
		if (sysUserRole.getRoleId() != null && sysUserRole.getRoleId() > 0) {
			criteria.andRoleIdEqualTo(sysUserRole.getRoleId());
		}
		return mapper.deleteByExample(example);
	}

	@Override
	public int deleteById(long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public SysUserRole selectById(long id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public SysUserRole selectByUserRole(SysUserRole sysUserRole) {
		SysUserRoleExample example = new SysUserRoleExample();
		SysUserRoleExample.Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(sysUserRole.getUserId());
		criteria.andRoleIdEqualTo(sysUserRole.getRoleId());
		List<SysUserRole> resultList = mapper.selectByExample(example);
		if (resultList.size() > 0) {
			return resultList.get(0);
		}
		return null;
	}

	@Override
	public int deleteByUserId(long userId) {
		SysUserRoleExample example = new SysUserRoleExample();
		SysUserRoleExample.Criteria criteria = example.createCriteria();
		criteria.andUserIdEqualTo(userId);
		return mapper.deleteByExample(example);
	}
}

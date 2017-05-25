package com.sichuang.service.impl.dao.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.SysUser;
import com.sichuang.bean.entity.SysUserExample;
import com.sichuang.service.impl.dao.UserDao;
import com.sichuang.service.impl.dao.impl.mybatis.SysUserMapper;
import com.sichuang.util.Base64Util;
import com.sichuang.util.base.Page;
import com.sichuang.util.base.SqlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

@Repository
public class UserDaoImpl implements UserDao {

	@Autowired
	private SysUserMapper mapper;

	@Override
	public SysUser selectUser(String userno, String password) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andUserNoEqualTo(userno);
		criteria.andPasswordEqualTo(Base64Util.encrypt(password));
		List<SysUser> result = mapper.selectByExample(example);
		if (result.size() > 0) {
			SysUser user = result.get(0);
			user.setPassword(password);
			return user;
		}
		return null;
	}

	@Override
	public SysUser selectByUserNo(String userno) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andUserNoEqualTo(userno);
		List<SysUser> result = mapper.selectByExample(example);
		if (result.size() > 0) {
			return result.get(0);
		}
		return null;
	}

	@Override
	public int insert(SysUser sysUser) {
		Date date = new Date();
		String password = Base64Util.encrypt(sysUser.getPassword());
		sysUser.setPassword(password);
		sysUser.setCreateTime(date);
		sysUser.setUpdateTime(date);
		return mapper.insertSelective(sysUser);
	}

	@Override
	public int update(SysUser sysUser) {
		sysUser.setUpdateTime(new Date());
		return mapper.updateByPrimaryKeySelective(sysUser);
	}

	@Override
	public int deleteById(Long id) {
		return mapper.deleteByPrimaryKey(id);
	}

	@Override
	public List<SysUser> listForPage(int pageCurrent, int pageSize, Long organizationId, String name, String staffNo,String organizationName) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		if (organizationId != null){
			criteria.andOrganizationIdEqualTo(organizationId);
		}
		if(StringUtils.hasText(name)){
			criteria.andNameEqualTo(name);
		}
		if(StringUtils.hasText(staffNo)){
			criteria.andStaffNoEqualTo(staffNo);
		}
		if (StringUtils.hasText(organizationName)) {
			criteria.andOrganizationNameEqualTo(organizationName);
		}
		PageHelper.startPage(pageCurrent,pageSize);
		List<SysUser> list = mapper.selectByExample(example);

		return list;
	}

	@Override
	public SysUser select(long id) {
		return mapper.selectByPrimaryKey(id);
	}

	@Override
	public SysUser selectByOrganizationId(long id) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andOrganizationIdEqualTo(id);
		List<SysUser> list = mapper.selectByExample(example);
		if (list.size() > 0){
			return list.get(0);
		}
		return null;
	}

	/**
	 * @param name
	 * @param equalsOrLikes true为精确查询，false为模糊查询
	 * @return
	 */
	@Override
	public List<SysUser> selectByName(String name, boolean equalsOrLikes) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		if (equalsOrLikes) {
			criteria.andNameEqualTo(name);
		} else {
			criteria.andNameLike(SqlUtil.like(name));
		}
		return mapper.selectByExample(example);
	}

	/**
	 * 增加
	 *
	 * @param uidList
	 * @return
	 */
	@Override
	public List<SysUser> listForId(List<Long> uidList) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andIdIn(uidList);
		return mapper.selectByExample(example);

	}

	@Override
	public List<SysUser> list() {
		SysUserExample example = new SysUserExample();
		return mapper.selectByExample(example);
	}

	@Override
	public int deleteByIds(List<Long> ids) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andIdIn(ids);
		int result = mapper.deleteByExample(example);
		return result;
	}

	@Override
	public List<SysUser> selectByNameEmail(String name, String email) {
		SysUserExample example = new SysUserExample();
		SysUserExample.Criteria criteria = example.createCriteria();
		criteria.andNameEqualTo(name);
		criteria.andEmailEqualTo(email);
		return mapper.selectByExample(example);
	}
}

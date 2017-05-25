package com.sichuang.service.impl;

import java.util.List;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.SysRole;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.Result;
import com.sichuang.service.RoleService;
import com.sichuang.service.impl.dao.RoleDao;
import com.sichuang.util.base.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

@Service
public class RoleServiceImpl implements RoleService {

	@Autowired
	private RoleDao dao;

	@Override
	public SysRole query(long id) {
		return dao.selectById(id);
	}

	@Override
	public int save(SysRole sysRole) {
		return dao.insert(sysRole);
	}

	@Override
	public int update(SysRole sysRole) {
		return dao.update(sysRole);
	}

	@Override
	public int delete(long id) {
		return dao.deleteById(id);
	}

	@Override
	public EasyUIResult listForPage(int pageCurrent, int pageSize, String startDate, String endDate,String roleName) {
		List<SysRole> list = dao.listForPage(pageCurrent, pageSize, startDate, endDate, roleName);
		PageInfo<SysRole> pageInfo = new PageInfo<>(list);

		EasyUIResult easyUIResult = new EasyUIResult();
		easyUIResult.setTotal(pageInfo.getTotal());
		easyUIResult.setRows(pageInfo.getList());
		return easyUIResult;
	}

	@Override
	public List<SysRole> list() {
		return dao.list();
	}

	@Override
	public SysRole queryByRoleName(String roleName) {
		return dao.selectByRoleName(roleName);
	}

	@Override
	public List<SysRole> listForId(List<Long> idList) {
		return dao.listForId(idList);
	}

	@Override
	public int deleteByIds(List<Long> ids) {
		return dao.deleteByIds(ids);
	}
}

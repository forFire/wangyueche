package com.sichuang.service;

import com.sichuang.bean.entity.SysRole;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.Result;
import com.sichuang.util.base.Page;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/3/20.
 */
public interface RoleService {

	SysRole query(long id);
	
	SysRole queryByRoleName(String roleName);

	int save(SysRole sysRole);

	int update(SysRole sysRole);

	int delete(long id);

	EasyUIResult listForPage(int pageCurrent, int pageSize, String startDate,String endDate, String roleName);
	
	List<SysRole> listForId(List<Long> idList);

	List<SysRole> list();

	int deleteByIds(List<Long> ids);
}

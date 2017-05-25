package com.sichuang.biz;

import com.sichuang.bean.entity.SysPermission;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.Result;
import com.sichuang.service.PermissionService;
import com.sichuang.util.base.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

@Component
public class PermissionBiz {

	@Autowired
	private PermissionService service;

	public SysPermission query(long id) {
		return service.query(id);
	}

	public int save(SysPermission sysPermission) {
		return service.save(sysPermission);
	}
	

	public int delete(long id) {
		return service.delete(id);
	}

	public int update(SysPermission sysPermission) {
		return service.update(sysPermission);
	}

	public EasyUIResult listForPage(int pageCurrent, int pageSize, String permCondition, String permName, String permValue) {
		return service.listForPage(pageCurrent, pageSize, permCondition, permName, permValue);
	}

	public int deletByIds(List<Long> ids) {
		return service.deleteByIds(ids);
	}
}

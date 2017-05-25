package com.sichuang.service;

import com.sichuang.bean.entity.SysOrganization;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.Result;
import com.sichuang.bean.vo.SysOrganizationVo;
import com.sichuang.util.base.Page;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/3/20.
 */
public interface OrganizationService {

   SysOrganization query(long id);

    SysOrganization queryByOrganizationName(String organizationName);

    int save(SysOrganization sysOrganization);

    int update(SysOrganization sysOrganization);

    int delete(long id);

    List<SysOrganization> listForId(List<Long> idList);

    List<SysOrganization> list();

    EasyUIResult listForPage(int pageCurrent, int pageSize, String orgName, String orgLeaderName);

    /**
     * 多选删除
     * @param ids
     * @return
     */
    int deleteByIds(List<Long> ids);
}

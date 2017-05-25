package com.sichuang.service.impl.dao;

import com.sichuang.bean.entity.SysMenu;
import com.sichuang.util.base.Page;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/5.
 */
public interface MenuDao {

    SysMenu selectById(long id);

    int insert(SysMenu sysMenu);

    int update(SysMenu sysMenu);

    int deleteById(long id);

    List<SysMenu> listForPage(int pageCurrent,int pageSize,String date,String search);

    List<SysMenu> listForId(List<Long> idList);

    List<SysMenu> list();

    List<SysMenu> listForParentId(Long parentId);

    int deleteByIds(List<Long> ids);
}

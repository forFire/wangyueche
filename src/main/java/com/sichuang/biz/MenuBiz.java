package com.sichuang.biz;

import com.sichuang.bean.entity.SysMenu;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.Result;
import com.sichuang.service.MenuService;
import com.sichuang.util.base.Page;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/5.
 */
@Component
public class MenuBiz {

    @Autowired
    private MenuService service;

    public EasyUIResult listForPage(int pageCurrent, int pageSize, String date, String search){
        return service.listForPage(pageCurrent, pageSize, date, search);
    }

    public SysMenu query(long id){
        return service.query(id);
    }

    public Integer save(SysMenu sysMenu){
        return service.save(sysMenu);
    }

    public Integer update(SysMenu sysMenu){
        return service.update(sysMenu);
    }

    public int delete(long id){
        return service.delete(id);
    }

    public int deleteByIds(List<Long> ids){
        return service.deleteByIds(ids);
    }

    public List<SysMenu> queryByParentId(long parentId){
        return service.listForParentId(parentId);
    }
}

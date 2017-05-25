package com.sichuang.service.impl.dao;

import java.util.List;

import com.sichuang.bean.entity.RegionInfo;

/**
 * Created by zhangfei on 2017/4/12.
 */
public interface CarMonitorDao {
    public List<RegionInfo> districts(String code);

    public int initFence(String code, String fences);
}

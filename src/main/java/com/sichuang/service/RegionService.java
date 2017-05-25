package com.sichuang.service;

import com.sichuang.bean.entity.RegionInfo;

import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/22 22:28
 *
 * @author gaojl
 */
public interface RegionService {
    List<RegionInfo> listForCode(String regionCode);

    Map<Integer, String> listRegionIdWithName(String regionCode);
}

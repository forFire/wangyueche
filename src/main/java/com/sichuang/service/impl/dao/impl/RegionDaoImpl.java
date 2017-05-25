package com.sichuang.service.impl.dao.impl;

import com.sichuang.bean.entity.RegionInfo;
import com.sichuang.bean.entity.RegionInfoExample;
import com.sichuang.service.impl.dao.RegionDao;
import com.sichuang.service.impl.dao.impl.mybatis.RegionInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Component;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaojl on 2017/4/22 22:14
 *
 * @author gaojl
 */
@Component
public class RegionDaoImpl implements RegionDao{
    @Autowired
    private RegionInfoMapper mapper;
    /**
     * 通过区域名称查询
     *
     * @param regionName 区域名称
     * @return
     */
    @Override
    public List<RegionInfo> selectByRegionName(String regionName) {
        RegionInfoExample example = new RegionInfoExample();
        RegionInfoExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(regionName)) {
            criteria.andRegionNameEqualTo(regionName);
        }
        return mapper.selectByExample(example);
    }

    /**
     * 通过区域代码查询
     *
     * @param regionCode
     * @return
     */
    @Override
    public RegionInfo selectByRegionCode(String regionCode) {
        RegionInfoExample example = new RegionInfoExample();
        RegionInfoExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(regionCode)) {
            criteria.andRegionCodeEqualTo(regionCode);
        }
        List<RegionInfo> list = mapper.selectByExample(example);
        if (list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    /**
     * 通过父级区域代码查询
     *
     * @param parentCode
     * @return
     */
    @Override
    public List<RegionInfo> selectByParentCode(String parentCode) {
        RegionInfoExample example = new RegionInfoExample();
        RegionInfoExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(parentCode)) {
            criteria.andParentCodeEqualTo(parentCode);
        }
        return mapper.selectByExample(example);
    }

}

package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.DriverInfo;
import com.sichuang.bean.entity.DriverStatInfo;
import com.sichuang.bean.entity.DriverStatInfoExample;
import com.sichuang.service.impl.dao.DriverInfoDao;
import com.sichuang.service.impl.dao.DriverStatInfoDao;
import com.sichuang.service.impl.dao.impl.mybatis.DriverStatInfoMapper;
import com.sichuang.util.base.SqlUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaojl on 2017/4/13 6:43
 *
 * @author gaojl
 */
@Repository
public class DriverStatInfoDaoImpl implements DriverStatInfoDao {
    @Autowired
    private DriverStatInfoMapper mapper;
    @Autowired
    private DriverInfoDao dao;

    @Override
    public DriverStatInfo selectDriverStat(String companyId, String licenseId, String driverPhone) {
        DriverStatInfoExample example = new DriverStatInfoExample();
        DriverStatInfoExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(licenseId)) {
            criteria.andLicenseIdEqualTo(licenseId);
        }
        if (StringUtils.hasText(driverPhone)) {
            DriverInfo driverInfo = dao.selectByDriverPhone(driverPhone);
            if (driverInfo != null) {
                criteria.andLicenseIdEqualTo(driverInfo.getLicenseId());
            }
        }
        List<DriverStatInfo> list = mapper.selectByExample(example);
        if (list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<DriverStatInfo> listForPage(int page, int pageSize, Integer address, String companyId, String licenseId,String driverPhone) {
        DriverStatInfoExample example = new DriverStatInfoExample();
        DriverStatInfoExample.Criteria criteria = example.createCriteria();
        if (address != null) {
            criteria.andAddressEqualTo(address);
        }
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(licenseId)) {
            criteria.andLicenseIdEqualTo(licenseId);
        }
        if (StringUtils.hasText(driverPhone)) {
            DriverInfo driverInfo = dao.selectByDriverPhone(driverPhone);
            if (driverInfo != null) {
                criteria.andLicenseIdEqualTo(driverInfo.getLicenseId());
            }
        }

        int totalCount = mapper.countByExample(example);
        pageSize = SqlUtil.checkPageSize(pageSize);
        page = SqlUtil.checkPageCurrent(totalCount, pageSize, page);

        PageHelper.startPage(page, pageSize);
        List<DriverStatInfo> list = mapper.selectByExample(example);
        return list;
    }
}

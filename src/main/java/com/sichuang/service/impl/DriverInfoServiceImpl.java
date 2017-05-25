package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.DriverInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.DriverInfoVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.DriverInfoService;
import com.sichuang.service.impl.dao.DriverInfoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/13 8:50
 *
 * @author gaojl
 */
@Service
public class DriverInfoServiceImpl implements DriverInfoService {
    @Autowired
    private DriverInfoDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public DriverInfoVo selectDriverInfo(Integer address, String companyId, String licenseId, String driverPhone) {
        DriverInfo driverInfo = dao.selectDriverInfo(address, companyId, licenseId, driverPhone);
        if (driverInfo != null) {
            Map<String, String> map = infoService.idWithName();
            DriverInfoVo vo = new DriverInfoVo(driverInfo);
            vo.setCompanyName(map.get(driverInfo.getCompanyId()));
            return vo;
        }
        return null;
    }

    @Override
    public EasyUIResult listForPage(int pageCurrent, int pageSize, Integer address,String companyId, String licenseId, String driverName, Integer state) {

        List<DriverInfo> list = dao.listForPage(pageCurrent, pageSize, address, companyId, licenseId, driverName, state);
        List<DriverInfoVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (DriverInfo info : list) {
                DriverInfoVo vo = new DriverInfoVo(info);
                vo.setCompanyName(map.get(info.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<DriverInfoVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

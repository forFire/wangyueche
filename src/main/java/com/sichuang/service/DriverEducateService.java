package com.sichuang.service;

import com.sichuang.bean.entity.DriverEducate;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.DriverEducateVo;

/**
 * Created by gaojl on 2017/4/13 6:45
 *
 * @author gaojl
 */

public interface DriverEducateService {
    DriverEducateVo selectDriverEducate(String companyId, String licenseId, String driverPhone);

    EasyUIResult listForPage(int page,int pageSize,Integer address, String companyId, String licenseId, String courseName,String driverPhone);
}

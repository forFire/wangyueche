package com.sichuang.service;

import com.sichuang.bean.entity.DriverApp;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.DriverAppVo;

/**
 * Created by gaojl on 2017/4/13 6:45
 *
 * @author gaojl
 */
public interface DriverAppService {
    DriverAppVo selectDriverApp(String companyId, String licenseId, String driverPhone);

    EasyUIResult listForPage(int page, int pageSize, Integer address, String companyId, String licenseId, String driverPhone, Integer state);
}

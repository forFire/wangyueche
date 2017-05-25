package com.sichuang.service;

import com.sichuang.bean.entity.DriverInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.DriverInfoVo;

/**
 * Created by gaojl on 2017/4/13 6:45
 *
 * @author gaojl
 */
public interface DriverInfoService {
    DriverInfoVo selectDriverInfo(Integer address, String companyId, String licenseId, String driverPhone);

    EasyUIResult listForPage(int pageCurrent, int pageSize, Integer address,String companyId, String licenseId,String driverName,Integer state);
}

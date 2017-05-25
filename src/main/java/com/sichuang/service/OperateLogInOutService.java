package com.sichuang.service;

import com.sichuang.bean.entity.OperateLogInOut;
import com.sichuang.bean.vo.EasyUIResult;

import java.util.List;

/**
 * Created by gaojl on 2017/4/17 13:18
 * 车辆运营上下线service
 *
 * @author gaojl
 */
public interface OperateLogInOutService {
    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String licenseId, String vehicleNo);
}

package com.sichuang.service;

import com.sichuang.bean.vo.EasyUIResult;

/**
 * Created by gaojl on 2017/4/14 8:41
 *
 * @author gaojl
 */
public interface VehicleTotalMileService {
    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String vehicleNo);
}

package com.sichuang.service;

import com.sichuang.bean.entity.VehicleInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.VehicleInfoVo;

import java.util.List;

/**
 * Created by Gavin on 2017/4/12.
 */
public interface VehicleService {

    VehicleInfoVo selectVehicle(Integer address, String companyId, String vehicleNo);

    EasyUIResult listForPage(int pageCurrent, int pageSize, Integer address, String companyId, String vehicleNo, Integer state);
}

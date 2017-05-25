package com.sichuang.service;

import com.sichuang.bean.entity.OrderInfo;
import com.sichuang.bean.vo.EasyUIResult;

import java.util.List;

/**
 * Created by gaojl on 2017/4/17 11:18
 * 订单信息service
 *
 * @author gaojl
 */
public interface OrderInfoService {
    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String licenseId, String vehicleNo, String driverPhone);
}

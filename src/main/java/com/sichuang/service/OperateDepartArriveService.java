package com.sichuang.service;

import com.sichuang.bean.vo.EasyUIResult;

/**
 * Created by gaojl on 2017/4/17 13:16
 * 企业营运数据service
 *
 * @author gaojl
 */
public interface OperateDepartArriveService {
    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo);

    /**
     * 特殊车辆查找，根据上下车经纬度查询
     * @param page
     * @param rows
     * @param address
     * @param companyId
     * @param vehicleNo
     * @param orderId
     * @param depLongitude
     * @param depLatitude
     * @param destLongitude
     * @param destLatitude
     * @param startDate
     * @param endDate
     * @return
     */
    EasyUIResult listForSpeicalVehicle(int page, int rows, Integer address, String companyId, String vehicleNo, String orderId, Double depLongitude, Double depLatitude, Double destLongitude, Double destLatitude, String startDate, String endDate);

    /**
     * 超区域经营查询
     * @param page
     * @param rows
     * @param address
     * @param companyId
     * @param startDate
     * @param endDate
     * @param orderId
     * @param driverName
     * @param licenseId
     * @param vehicleNo
     * @return
     */
    EasyUIResult listForBeyondOperate(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo);
}

package com.sichuang.service.impl.dao;

import java.util.List;

import com.sichuang.bean.entity.OperateDepartArrive;

/**
 * Created by gaojl on 2017/4/14 13:19
 *
 * @author gaojl
 */
public interface OperateDepartArriveDao {
    /**
     * 运营监管-营运数据-企业营运数据
     *
     * @param page
     * @param rows
     * @param address
     * @param companyId
     * @param orderId
     * @param driverName
     * @param licenseId
     * @param vehicleNo
     * @return
     */
    List<OperateDepartArrive> listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo);

    
    OperateDepartArrive selectByOrderId(String orderId);
    
    /**
     * 根据车辆出发到达经纬度查询车辆经营信息
     * @param depLongitude
     * @param depLatitude
     * @param destLongitude
     * @param destLatitude
     * @return
     */
    List<OperateDepartArrive> selectByDepAndDestLongLat(int page,int rows,Integer address,String companyId,String vehicleNo,String orderId,Double depLongitude, Double depLatitude, Double destLongitude, Double destLatitude,String startDate,String endDate);

    /**
     * 超区域经营车辆查询
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
    List<OperateDepartArrive> listForBeyondOperate(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo);
}

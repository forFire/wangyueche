package com.sichuang.service.impl;

import com.sichuang.bean.entity.CompanyInfo;
import com.sichuang.bean.vo.pageinfo.CompanyOrderStatisticsVo;
import com.sichuang.bean.vo.pageinfo.CompanyVehicleStatisticsVo;
import com.sichuang.bean.vo.pageinfo.OrderStatisticsVo;
import com.sichuang.bean.vo.pageinfo.VehicleStatisticsVo;
import com.sichuang.service.PageInfoService;
import com.sichuang.service.impl.dao.CompanyInfoDao;
import com.sichuang.service.impl.dao.OrderInfoDao;
import com.sichuang.service.impl.dao.VehicleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/21.
 */
@Service
public class PageInfoServiceImpl implements PageInfoService {

    @Autowired
    private OrderInfoDao orderInfoDao;
    @Autowired
    private CompanyInfoDao companyInfoDao;
    @Autowired
    private VehicleDao vehicleDao;
    /**
     * 平台公司订单统计信息查询
     * @return
     */
    @Override
    public OrderStatisticsVo queryCompanyOrderStatistics() {
        OrderStatisticsVo result = new OrderStatisticsVo();
        long totalOrder = orderInfoDao.getTotalOrder();
        long totalSuccessOrder = orderInfoDao.getTotalSuccessOrder();
        List<CompanyOrderStatisticsVo> list = new ArrayList<>();
        List<String> companyIdList = companyInfoDao.getCompanyIdList();
        for (String companyId:companyIdList){
            CompanyOrderStatisticsVo companyOrderVo = new CompanyOrderStatisticsVo();
            long totalCompanyOrder = orderInfoDao.getCompanyTotalOrder(companyId);
            long totalCompanySuccessOrder = orderInfoDao.getCompanyTotalSuccessOrder(companyId);
            double totalCompanySuccessRate = totalCompanySuccessOrder / totalCompanyOrder;
            companyOrderVo.setTotalCompanyOrder(totalCompanyOrder);
            companyOrderVo.setTotalCompanySuccessOrder(totalCompanySuccessOrder);
            companyOrderVo.setTotalCompanySuccessRate(totalCompanySuccessRate);
            list.add(companyOrderVo);
        }
        result.setTotalOrder(totalOrder);
        result.setTotalSuccessOrder(totalSuccessOrder);
        result.setList(list);
        return result;
    }

    /**
     * 平台公司车辆统计信息查询
     * @return
     */
    @Override
    public VehicleStatisticsVo queryCompanyVehicleStatistics() {
        VehicleStatisticsVo result = new VehicleStatisticsVo();
        long totalVehicle = vehicleDao.getTotalVehicle();
        List<CompanyVehicleStatisticsVo> list = new ArrayList<>();
        List<String> companyIdList = companyInfoDao.getCompanyIdList();
        for (String companyId:companyIdList){
            CompanyVehicleStatisticsVo vehicleStatisticsVo = new CompanyVehicleStatisticsVo();
            long totalCompanyVehicle = vehicleDao.getCompanyTotalVehicle(companyId);
            long totalCompanyScaleVehicle = vehicleDao.getCompanyTotalScaleVehicle(companyId);
            double totalCompanyScaleVehileRate = totalCompanyVehicle / totalCompanyScaleVehicle;
            vehicleStatisticsVo.setTotalCompanyVehicle(totalCompanyVehicle);
            vehicleStatisticsVo.setTotalCompanyScaleVehileRate(totalCompanyScaleVehicle);
            vehicleStatisticsVo.setTotalCompanyScaleVehileRate(totalCompanyScaleVehileRate);
            list.add(vehicleStatisticsVo);
        }
        result.setTotalVehicle(totalVehicle);
        result.setList(list);
        return result;
    }
}

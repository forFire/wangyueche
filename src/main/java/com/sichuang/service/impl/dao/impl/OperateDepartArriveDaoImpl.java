package com.sichuang.service.impl.dao.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.OperateDepartArrive;
import com.sichuang.bean.entity.OperateDepartArriveExample;
import com.sichuang.service.impl.dao.OperateDepartArriveDao;
import com.sichuang.service.impl.dao.impl.mybatis.OperateDepartArriveMapper;
import com.sichuang.util.DateUtil;

/**
 * Created by gaojl on 2017/4/14 13:28
 *
 * @author gaojl
 */
@Repository
public class OperateDepartArriveDaoImpl implements OperateDepartArriveDao {
    @Autowired
    private OperateDepartArriveMapper mapper;

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
    @Override
    public List<OperateDepartArrive> listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo) {
        OperateDepartArriveExample example = new OperateDepartArriveExample();
        OperateDepartArriveExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(orderId)) {
            criteria.andOrderIdEqualTo(orderId);
        }
        if (StringUtils.hasText(driverName)) {
            criteria.andDriverNameEqualTo(driverName);
        }
        if (StringUtils.hasText(vehicleNo)) {
            criteria.andVehicleNoEqualTo(vehicleNo);
        }
        if (StringUtils.hasText(startDate) && StringUtils.hasText(endDate)) {
            String dateFormat = "yyyy-MM-dd HH:mm:ss";
            String numFormat = "yyyyMMddHHmmss";
            if (startDate.equals(endDate)) {
                long date = DateUtil.parseString(startDate, dateFormat,numFormat );
                criteria.andDepTimeEqualTo(date);
            }
            long start = DateUtil.parseString(startDate, dateFormat, numFormat);
            long end = DateUtil.parseString(endDate, dateFormat, numFormat);
            criteria.andDepTimeGreaterThanOrEqualTo(start);
            criteria.andDestTimeLessThanOrEqualTo(end);
        }
        PageHelper.startPage(page, rows);
        List<OperateDepartArrive> list = mapper.selectByExample(example);
        return list;
    }

    /**
     * 根据车辆出发到达经纬度查询车辆经营信息
     *
     * @param page
     * @param rows
     * @param address
     * @param companyId
     * @param vehicleNo
     * @param orderId
     * @param depLongitude
     * @param depLatitude
     * @param destLongitude
     * @param destLatitude  @return
     */
    @Override
    public List<OperateDepartArrive> selectByDepAndDestLongLat(int page, int rows, Integer address, String companyId, String vehicleNo, String orderId, Double depLongitude, Double depLatitude, Double destLongitude, Double destLatitude,String startDate,String endDate) {
        OperateDepartArriveExample example = new OperateDepartArriveExample();
        OperateDepartArriveExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(orderId)) {
            criteria.andOrderIdEqualTo(orderId);
        }
        if (StringUtils.hasText(vehicleNo)) {
            criteria.andVehicleNoEqualTo(vehicleNo);
        }
        if (depLatitude != null && depLongitude != null) {

        }
        if (destLongitude != null && destLatitude != null) {

        }
        if (StringUtils.hasText(startDate) && StringUtils.hasText(endDate)) {
            String dateFormat = "yyyy-MM-dd HH:mm:ss";
            String numFormat = "yyyyMMddHHmmss";
            if (startDate.equals(endDate)) {
                long date = DateUtil.parseString(startDate, dateFormat,numFormat );
                criteria.andDepTimeEqualTo(date);
            }
            long start = DateUtil.parseString(startDate, dateFormat, numFormat);
            long end = DateUtil.parseString(endDate, dateFormat, numFormat);
            criteria.andDepTimeGreaterThanOrEqualTo(start);
            criteria.andDestTimeLessThanOrEqualTo(end);
        }
        PageHelper.startPage(page, rows);
        List<OperateDepartArrive> list = mapper.selectByExample(example);
        return list;
    }

    /**
     * 超区域经营车辆查询
     *
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
    @Override
    public List<OperateDepartArrive> listForBeyondOperate(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo) {
        OperateDepartArriveExample example = new OperateDepartArriveExample();
        OperateDepartArriveExample.Criteria criteria = example.createCriteria();
        //criteria.andIsBeyondOperateEqualTo(1);
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(orderId)) {
            criteria.andOrderIdEqualTo(orderId);
        }
        if (StringUtils.hasText(driverName)) {
            criteria.andDriverNameEqualTo(driverName);
        }
        if (StringUtils.hasText(vehicleNo)) {
            criteria.andVehicleNoEqualTo(vehicleNo);
        }
        if (StringUtils.hasText(startDate) && StringUtils.hasText(endDate)) {
            String dateFormat = "yyyy-MM-dd HH:mm:ss";
            String numFormat = "yyyyMMddHHmmss";
            if (startDate.equals(endDate)) {
                long date = DateUtil.parseString(startDate, dateFormat,numFormat );
                criteria.andDepTimeEqualTo(date);
            }
            long start = DateUtil.parseString(startDate, dateFormat, numFormat);
            long end = DateUtil.parseString(endDate, dateFormat, numFormat);
            criteria.andDepTimeGreaterThanOrEqualTo(start);
            criteria.andDestTimeLessThanOrEqualTo(end);
        }
        PageHelper.startPage(page, rows);
        List<OperateDepartArrive> list = mapper.selectByExample(example);
        return list;
    }

	@Override
	public OperateDepartArrive selectByOrderId(String orderId) {
		OperateDepartArriveExample example = new OperateDepartArriveExample();
		OperateDepartArriveExample.Criteria criteria = example.createCriteria();
        criteria.andOrderIdEqualTo(orderId);
        List<OperateDepartArrive> list = mapper.selectByExample(example);
        if (list.size() > 0) {
            return list.get(0);
        }
		return null;
	}
}

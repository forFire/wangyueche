package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.OperateDepartArrive;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.operation.OperatePayVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.OperateDepartArriveService;
import com.sichuang.service.impl.dao.OperateDepartArriveDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 15:18
 *
 * @author gaojl
 */
@Service
public class OperateDepartArriveServiceImpl implements OperateDepartArriveService {
    @Autowired
    private OperateDepartArriveDao dao;
    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo) {
        List<OperateDepartArrive> list = dao.listForPage(page, rows, address, companyId, startDate, endDate, orderId, driverName, licenseId, vehicleNo);
        List<OperatePayVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (OperateDepartArrive operateDepartArrive : list) {
                OperatePayVo vo = new OperatePayVo(operateDepartArrive);
                vo.setCompanyName(map.get(operateDepartArrive.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<OperatePayVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }

    @Override
    public EasyUIResult listForSpeicalVehicle(int page, int rows, Integer address, String companyId, String vehicleNo, String orderId, Double depLongitude, Double depLatitude, Double destLongitude, Double destLatitude, String startDate, String endDate) {
        List<OperateDepartArrive> list = dao.selectByDepAndDestLongLat(page, rows, address, companyId, vehicleNo, orderId, depLongitude, depLatitude, destLongitude, destLatitude, startDate, endDate);
        List<OperatePayVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (OperateDepartArrive info : list) {
                OperatePayVo vo = new OperatePayVo(info);
                vo.setCompanyName(map.get(info.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<OperatePayVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }


    @Override
    public EasyUIResult listForBeyondOperate(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String driverName, String licenseId, String vehicleNo) {
        List<OperateDepartArrive> list = dao.listForBeyondOperate(page, rows, address, companyId, startDate, endDate, orderId, driverName, licenseId, vehicleNo);
        List<OperatePayVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (OperateDepartArrive info : list) {
                OperatePayVo vo = new OperatePayVo(info);
                vo.setCompanyName(map.get(info.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<OperatePayVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

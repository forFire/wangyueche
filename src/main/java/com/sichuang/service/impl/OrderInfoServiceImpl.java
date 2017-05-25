package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.OrderInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.operation.OrderInfoVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.OrderInfoService;
import com.sichuang.service.RegionService;
import com.sichuang.service.impl.dao.OrderInfoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 15:09
 *
 * @author gaojl
 */
@Service
public class OrderInfoServiceImpl implements OrderInfoService {
    @Autowired
    private OrderInfoDao dao;
    @Autowired
    private CompanyInfoService infoService;
    @Autowired
    private RegionService regionService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String orderId, String licenseId, String vehicleNo, String driverPhone) {
        List<OrderInfo> list = dao.listForPage(page, rows, address, companyId, startDate, endDate, orderId, licenseId, vehicleNo, driverPhone);
        List<OrderInfoVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            Map<Integer, String> regionMap = regionService.listRegionIdWithName("340100");
            for (OrderInfo info : list) {
                OrderInfoVo vo = new OrderInfoVo(info);
                vo.setCompanyName(map.get(info.getCompanyId()));
                vo.setRegionName(regionMap.get(info.getAddress()));
                voList.add(vo);
            }
        }
        PageInfo<OrderInfoVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

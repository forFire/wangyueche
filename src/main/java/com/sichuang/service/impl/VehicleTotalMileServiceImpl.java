package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.VehicleTotalMile;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.VehicleTotalMileVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.VehicleTotalMileService;
import com.sichuang.service.impl.dao.VehicleTotalMileDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/14 8:50
 *
 * @author gaojl
 */
@Service
public class VehicleTotalMileServiceImpl implements VehicleTotalMileService {
    @Autowired
    private VehicleTotalMileDao dao;

    @Autowired
    private CompanyInfoService infoService;
    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String vehicleNo) {
        List<VehicleTotalMile> list = dao.listForPage(page, rows, address, companyId, vehicleNo);
        List<VehicleTotalMileVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (VehicleTotalMile mile : list) {
                VehicleTotalMileVo vo = new VehicleTotalMileVo(mile);
                vo.setCompanyName(map.get(mile.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<VehicleTotalMileVo> pageInfo = new PageInfo<>(voList);

        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

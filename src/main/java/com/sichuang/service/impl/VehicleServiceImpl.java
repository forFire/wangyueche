package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.VehicleInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.VehicleInfoVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.VehicleService;
import com.sichuang.service.impl.dao.VehicleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by Gavin on 2017/4/12.
 */
@Service
public class VehicleServiceImpl implements VehicleService{
    @Autowired
    private VehicleDao vehicleDao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public VehicleInfoVo selectVehicle(Integer address, String companyId, String vehicleNo) {
        VehicleInfo info = vehicleDao.selectVehicle(address, companyId, vehicleNo);
        if (info != null) {
            Map<String, String> map = infoService.idWithName();
            VehicleInfoVo vo = new VehicleInfoVo(info);
            vo.setCompanyName(map.get(info.getCompanyId()));
            return vo;
        }
        return null;
    }

    @Override
    public EasyUIResult listForPage(int pageCurrent, int pageSize, Integer address, String companyId,String vehicleNo, Integer state) {
        List<VehicleInfo> list = vehicleDao.listForPage(pageCurrent, pageSize, address, companyId,vehicleNo,state);
        List<VehicleInfoVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (VehicleInfo info : list) {
                VehicleInfoVo vo = new VehicleInfoVo(info);
                vo.setCompanyName(map.get(info.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<VehicleInfoVo> pageInfo = new PageInfo<>(voList);

        EasyUIResult easyUIResult = new EasyUIResult();
        easyUIResult.setTotal(pageInfo.getTotal());
        easyUIResult.setRows(pageInfo.getList());
        return easyUIResult;
    }
}

package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.VehicleInsurance;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.VehicleInsuranceVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.VehicleInsuranceService;
import com.sichuang.service.impl.dao.VehicleInsuranceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/13 17:44
 *
 * @author gaojl
 */
@Service
public class VehicleInsuranceServiceImpl implements VehicleInsuranceService {
    @Autowired
    private VehicleInsuranceDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String vehicleNo, String insurCom) {
        List<VehicleInsurance> list = dao.listForPage(page, rows, address, companyId, vehicleNo, insurCom);
        List<VehicleInsuranceVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (VehicleInsurance insurance : list) {
                VehicleInsuranceVo vo = new VehicleInsuranceVo(insurance);
                vo.setCompanyName(map.get(insurance.getCompanyId()));
                voList.add(vo);
            }
        }
        EasyUIResult result = new EasyUIResult();
        PageInfo<VehicleInsuranceVo> pageInfo = new PageInfo<>(voList);

        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

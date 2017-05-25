package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.VehicleInfo;
import com.sichuang.bean.entity.VehicleInfoExample;
import com.sichuang.bean.entity.VehicleInsurance;
import com.sichuang.bean.entity.VehicleInsuranceExample;
import com.sichuang.service.impl.dao.VehicleDao;
import com.sichuang.service.impl.dao.VehicleInsuranceDao;
import com.sichuang.service.impl.dao.impl.mybatis.VehicleInsuranceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gaojl on 2017/4/13 17:12
 *
 * @author gaojl
 */
@Repository
public class VehicleInsuranceDaoImpl implements VehicleInsuranceDao {
    @Autowired
    private VehicleDao dao;

    @Autowired
    private VehicleInsuranceMapper mapper;

    @Override
    public List<VehicleInsurance> listForPage(int page, int rows, Integer address, String companyId, String vehicleNO, String insurCom) {
        VehicleInsuranceExample example = new VehicleInsuranceExample();
        VehicleInsuranceExample.Criteria criteria = example.createCriteria();

        /*if (address != null) {
            List<VehicleInfo> list = dao.selectByAddress(address);
            if (list.size() > 0) {
                List<String>  vehicleNos= new ArrayList<>();
                for (VehicleInfo vehicleInfo : list) {
                    vehicleNos.add(vehicleInfo.getVehicleNo());
                }
                criteria.andVehicleNoIn(vehicleNos);
            } else {
                return new ArrayList<>();
            }
        }*/
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(vehicleNO)) {
            criteria.andVehicleNoEqualTo(vehicleNO);
        }
        if (StringUtils.hasText(insurCom)) {
            criteria.andInsurComEqualTo(insurCom);
        }

        PageHelper.startPage(page, rows);
        List<VehicleInsurance> list = mapper.selectByExample(example);
        return list;
    }
}

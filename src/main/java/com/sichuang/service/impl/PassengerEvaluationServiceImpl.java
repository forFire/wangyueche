package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.PassengerEvaluation;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.PassengerEvaluationVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.PassengerEvaluationService;
import com.sichuang.service.impl.dao.PassengerEvaluationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 16:36
 *
 * @author gaojl
 */
@Service
public class PassengerEvaluationServiceImpl implements PassengerEvaluationService {
    @Autowired
    private PassengerEvaluationDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String orderId, String vehicleNo, String licenseId, String driverPhone, String startDate, String endDate) {
        List<PassengerEvaluation> list = dao.listForPage(page, rows, address, companyId, orderId, vehicleNo, licenseId, driverPhone, startDate, endDate);
        List<PassengerEvaluationVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (PassengerEvaluation evaluation : list) {
                PassengerEvaluationVo vo = new PassengerEvaluationVo();
            }
        }
        PageInfo<PassengerEvaluation> pageInfo = new PageInfo<>(list);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

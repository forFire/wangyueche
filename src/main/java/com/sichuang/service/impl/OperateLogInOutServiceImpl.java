package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.OperateLogInOut;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.operation.OperateLogInOutVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.OperateLogInOutService;
import com.sichuang.service.impl.dao.OperateLogInOutDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 16:00
 *
 * @author gaojl
 */
@Service
public class OperateLogInOutServiceImpl implements OperateLogInOutService{
    @Autowired
    private OperateLogInOutDao dao;
    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String startDate, String endDate, String licenseId, String vehicleNo) {
        List<OperateLogInOut> list = dao.listForPage(page, rows, address, companyId, startDate, endDate, licenseId, vehicleNo);
        List<OperateLogInOutVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (OperateLogInOut logInOut : list) {
                OperateLogInOutVo vo = new OperateLogInOutVo(logInOut);
                vo.setCompanyName(map.get(logInOut.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<OperateLogInOutVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

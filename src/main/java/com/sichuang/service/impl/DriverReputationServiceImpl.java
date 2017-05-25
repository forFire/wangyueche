package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.DriverReputation;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.operation.DriverReputationVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.DriverReputationService;
import com.sichuang.service.impl.dao.DriverReputationDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 17:17
 *
 * @author gaojl
 */
@Service
public class DriverReputationServiceImpl implements DriverReputationService{
    @Autowired
    private DriverReputationDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String licenseId, String startDate, String endDate) {
        List<DriverReputation> list = dao.listForPage(page, rows, address, companyId, licenseId, startDate, endDate);
        List<DriverReputationVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (DriverReputation reputation : list) {
                DriverReputationVo vo = new DriverReputationVo(reputation);
                vo.setCompanyName(map.get(reputation.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<DriverReputationVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

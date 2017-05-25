package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.DriverApp;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.DriverAppVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.DriverAppService;
import com.sichuang.service.impl.dao.DriverAppDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/13 8:48
 *
 * @author gaojl
 */
@Service
public class DriverAppServiceImpl implements DriverAppService {
    @Autowired
    private DriverAppDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public DriverAppVo selectDriverApp(String companyId, String licenseId, String driverPhone) {
        DriverApp app = dao.selectDriverApp(companyId, licenseId, driverPhone);
        if (app != null) {
            Map<String, String> map = infoService.idWithName();
            DriverAppVo vo = new DriverAppVo(app);
            vo.setCompanyName(map.get(app.getCompanyId()));
            return vo;
        }
        return null;
    }

    @Override
    public EasyUIResult listForPage(int page, int pageSize, Integer address, String licenseId, String companyId, String driverPhone, Integer state) {
        List<DriverApp> list = dao.listForPage(page, pageSize, address, companyId, licenseId,driverPhone, state);
        List<DriverAppVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (DriverApp app : list) {
                DriverAppVo vo = new DriverAppVo(app);
                vo.setCompanyName(map.get(app.getCompanyId()));
                voList.add(vo);
            }
        }
        EasyUIResult result = new EasyUIResult();
        PageInfo<DriverAppVo> pageInfo = new PageInfo<>(voList);
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

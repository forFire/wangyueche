package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.CompanyService;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.CompanyServiceVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.CompanyServiceService;
import com.sichuang.service.impl.dao.CompanyServiceDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Service
public class CompanyServiceServiceImpl implements CompanyServiceService {

    @Autowired
    private CompanyServiceDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public CompanyServiceVo selectCompanyService(String companyId) {
        CompanyService service = dao.selectCompanyService(companyId);
        if (service != null) {
            Map<String, String> map = infoService.idWithName();
            CompanyServiceVo vo = new CompanyServiceVo(service);
            vo.setCompanyName(map.get(service.getCompanyId()));
        }
        return null;
    }

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String serviceName, Integer state) {
        List<CompanyService> list = dao.listForPage(page, rows, address, companyId, serviceName, state);
        List<CompanyServiceVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String,String> map = infoService.idWithName();
            for (CompanyService service : list) {
                CompanyServiceVo vo = new CompanyServiceVo(service);
                vo.setCompanyName(map.get(service.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<CompanyServiceVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

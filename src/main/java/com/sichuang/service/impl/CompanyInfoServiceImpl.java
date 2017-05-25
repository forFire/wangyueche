package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.CompanyInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.impl.dao.CompanyInfoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Service
public class CompanyInfoServiceImpl implements CompanyInfoService {

    @Autowired
    private CompanyInfoDao dao;

    @Override
    public CompanyInfo selectCompanyInfo(Integer address, String companyId) {
        return dao.selectCompanyInfo(address, companyId);
    }

    @Override
    public CompanyInfo selectByState(String companyId, Integer state) {
        return dao.selectByState(companyId, state);
    }

    @Override
    public EasyUIResult listForPage(int page, int rows, String companyId, Integer state) {
        List<CompanyInfo> list = dao.listForPage(page, rows, companyId, state);
        PageInfo<CompanyInfo> pageInfo = new PageInfo<>(list);

        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }

    @Override
    public HashMap<String, String> idWithName() {
        List<CompanyInfo> list = dao.list();
        if (list.size() > 0) {
            HashMap<String, String> map = new HashMap<>();
            for (CompanyInfo info : list) {
                map.put(info.getCompanyId(), info.getCompanyName());
            }
            return map;
        }
        return null;
    }
}

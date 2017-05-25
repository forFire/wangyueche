package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.CompanyScale;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.CompanyScaleVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.CompanyScaleService;
import com.sichuang.service.impl.dao.CompanyScaleDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Service
public class CompanyScaleServiceImpl implements CompanyScaleService {

    @Autowired
    private CompanyScaleDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public CompanyScaleVo selectCompanyScale(String companyId) {
        CompanyScale scale = dao.selectCompanyScale(companyId);
        if (scale != null) {
            CompanyScaleVo vo = new CompanyScaleVo(scale);
            Map<String, String> map = infoService.idWithName();
            vo.setCompanyName(map.get(scale.getCompanyId()));
            return vo;
        }
        return null;
    }

    @Override
    public EasyUIResult listForPage(int page, int rows, String companyId) {
        List<CompanyScale> list = dao.listForPage(page, rows, companyId);
        List<CompanyScaleVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (CompanyScale scale : list) {
                CompanyScaleVo vo = new CompanyScaleVo(scale);
                vo.setCompanyName(map.get(scale.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<CompanyScaleVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

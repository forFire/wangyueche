package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.CompanyFare;
import com.sichuang.bean.entity.CompanyPay;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.CompanyFareVo;
import com.sichuang.bean.vo.baseinfo.CompanyPayVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.CompanyPayService;
import com.sichuang.service.impl.dao.CompanyInfoDao;
import com.sichuang.service.impl.dao.CompanyPayDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Service
public class CompanyPayServiceImpl implements CompanyPayService {

    @Autowired
    private CompanyPayDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public CompanyPayVo selectCompanyPay(String companyId) {
        CompanyPay pay = dao.selectCompanyPay(companyId);
        if (pay != null) {
            Map<String, String> map = infoService.idWithName();
            CompanyPayVo vo = new CompanyPayVo(pay);
            vo.setCompanyName(map.get(pay.getCompanyId()));
            return vo;
        }
        return null;
    }

    @Override
    public EasyUIResult listForPage(int page, int rows, String companyId, Integer state) {
        List<CompanyPay> list = dao.listForPage(page, rows, companyId, state);
        List<CompanyPayVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            //得到comapnyid和companyName对应的map
            Map<String, String> map = infoService.idWithName();
            for (CompanyPay pay : list) {
                CompanyPayVo vo = new CompanyPayVo(pay);
                vo.setCompanyName(map.get(pay.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<CompanyPayVo> payPageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(payPageInfo.getTotal());
        result.setRows(payPageInfo.getList());
        return result;
    }
}

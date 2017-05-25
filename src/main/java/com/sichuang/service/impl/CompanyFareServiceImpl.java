package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.CompanyFare;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.CompanyFareVo;
import com.sichuang.service.CompanyFareService;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.impl.dao.CompanyFareDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Service
public class CompanyFareServiceImpl implements CompanyFareService {

    @Autowired
    private CompanyFareDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String fareType, Integer state) {
        List<CompanyFare> list = dao.listForPage(page, rows, address, companyId, fareType, state);
        List<CompanyFareVo> voList = new ArrayList<>();
        if (list.size() > 0) {//如果查询结果有数据
            //得到comapnyid和companyName对应的map
            Map<String, String> map = infoService.idWithName();
            for (CompanyFare fare : list) {
                CompanyFareVo vo = new CompanyFareVo(fare);
                vo.setCompanyName(map.get(fare.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<CompanyFareVo> pageInfo = new PageInfo<>(voList);

        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

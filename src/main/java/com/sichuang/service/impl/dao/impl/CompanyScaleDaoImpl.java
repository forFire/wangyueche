package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.CompanyScale;
import com.sichuang.bean.entity.CompanyScaleExample;
import com.sichuang.service.impl.dao.CompanyScaleDao;
import com.sichuang.service.impl.dao.impl.mybatis.CompanyScaleMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Repository
public class CompanyScaleDaoImpl implements CompanyScaleDao {

    @Autowired
    private CompanyScaleMapper mapper;

    @Override
    public CompanyScale selectCompanyScale(String companyId) {
        CompanyScaleExample example = new CompanyScaleExample();
        CompanyScaleExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        List<CompanyScale> list = mapper.selectByExample(example);
        if (list.size() > 0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<CompanyScale> listForPage(int pageCurrent, int pageSize, String companyId) {
        CompanyScaleExample example = new CompanyScaleExample();
        CompanyScaleExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        PageHelper.startPage(pageCurrent,pageSize);
        List<CompanyScale> list = mapper.selectByExample(example);
        return list;
    }
}

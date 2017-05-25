package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.CompanyPay;
import com.sichuang.bean.entity.CompanyPayExample;
import com.sichuang.service.impl.dao.CompanyPayDao;
import com.sichuang.service.impl.dao.impl.mybatis.CompanyPayMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Repository
public class CompanyPayDaoImpl implements CompanyPayDao {

    @Autowired
    private CompanyPayMapper mapper;

    @Override
    public CompanyPay selectCompanyPay(String companyId) {
        CompanyPayExample example = new CompanyPayExample();
        CompanyPayExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        List<CompanyPay> list = mapper.selectByExample(example);
        if (list.size() > 0){
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<CompanyPay> listForPage(int pageCurrent, int pageSize, String companyId, Integer state) {
        CompanyPayExample example = new CompanyPayExample();
        CompanyPayExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)){
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (state != null) {
            criteria.andStateEqualTo(state);
        }
        PageHelper.startPage(pageCurrent,pageSize);
        List<CompanyPay> list = mapper.selectByExample(example);
        return list;
    }
}

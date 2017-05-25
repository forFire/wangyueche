package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.CompanyService;
import com.sichuang.bean.entity.CompanyServiceExample;
import com.sichuang.service.impl.dao.CompanyServiceDao;
import com.sichuang.service.impl.dao.impl.mybatis.CompanyServiceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Repository
public class CompanyServiceDaoImpl implements CompanyServiceDao {

    @Autowired
    private CompanyServiceMapper mapper;

    @Override
    public CompanyService selectCompanyService(String companyId) {
        CompanyServiceExample example = new CompanyServiceExample();
        CompanyServiceExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        List<CompanyService> list = mapper.selectByExample(example);
        if (list.size() > 0) {
            return list.get(0);
        }
        return null;
    }

    @Override
    public List<CompanyService> listForPage(int pageCurrent, int pageSize, Integer address, String companyId, String serviceName, Integer state) {
        CompanyServiceExample example = new CompanyServiceExample();
        CompanyServiceExample.Criteria criteria = example.createCriteria();
        if (address != null) {
            criteria.andAddressEqualTo(address);
        }
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(serviceName)) {
            criteria.andServiceNameEqualTo(serviceName);
        }
        if (state != null) {
            criteria.andStateEqualTo(state);
        }

        PageHelper.startPage(pageCurrent, pageSize);
        List<CompanyService> list = mapper.selectByExample(example);

        return list;
    }
}

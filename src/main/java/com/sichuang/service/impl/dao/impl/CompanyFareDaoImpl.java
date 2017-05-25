package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.CompanyFare;
import com.sichuang.bean.entity.CompanyFareExample;
import com.sichuang.service.impl.dao.CompanyFareDao;
import com.sichuang.service.impl.dao.impl.mybatis.CompanyFareMapper;
import com.sichuang.service.impl.dao.impl.mybatis.FenceMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/12.
 */
@Repository
public class CompanyFareDaoImpl implements CompanyFareDao {

    @Autowired
    private CompanyFareMapper mapper;





    @Override
    public List<CompanyFare> listForPage(int pageCurrent, int pageSize, Integer address, String companyId, String fareType, Integer state) {
        CompanyFareExample example = new CompanyFareExample();
        CompanyFareExample.Criteria criteria = example.createCriteria();
        if (address != null) {
            criteria.andAddressEqualTo(address);
        }
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(fareType)) {
            criteria.andFareTypeEqualTo(fareType);
        }
        if (state != null) {
            criteria.andStateEqualTo(state);
        }

        PageHelper.startPage(pageCurrent, pageSize);
        List<CompanyFare> list = mapper.selectByExample(example);

        return list;
    }
}

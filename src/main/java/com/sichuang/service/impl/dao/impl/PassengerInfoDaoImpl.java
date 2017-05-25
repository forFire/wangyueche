package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.PassengerInfo;
import com.sichuang.bean.entity.PassengerInfoExample;
import com.sichuang.service.impl.dao.PassengerInfoDao;
import com.sichuang.service.impl.dao.impl.mybatis.PassengerInfoMapper;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaojl on 2017/4/14 16:02
 *
 * @author gaojl
 */
@Repository
public class PassengerInfoDaoImpl implements PassengerInfoDao {
    @Autowired
    private PassengerInfoMapper mapper;

    @Override
    public List<PassengerInfo> listForPage(int page, int rows, String companyId, String passengerName, String passengerPhone) {
        PassengerInfoExample example = new PassengerInfoExample();
        PassengerInfoExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(passengerName)) {
            criteria.andPassengerNameEqualTo(passengerName);
        }
        if (StringUtils.hasText(passengerPhone)) {
            criteria.andPassengerPhoneEqualTo(passengerPhone);
        }

        PageHelper.startPage(page, rows);
        List<PassengerInfo> list = mapper.selectByExample(example);
        return list;
    }
}

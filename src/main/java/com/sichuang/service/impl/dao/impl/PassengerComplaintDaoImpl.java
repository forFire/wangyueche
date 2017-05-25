package com.sichuang.service.impl.dao.impl;

import com.github.pagehelper.PageHelper;
import com.sichuang.bean.entity.PassengerComplaint;
import com.sichuang.bean.entity.PassengerComplaintExample;
import com.sichuang.service.impl.dao.PassengerComplaintDao;
import com.sichuang.service.impl.dao.impl.mybatis.PassengerComplaintMapper;
import com.sichuang.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;
import org.springframework.util.StringUtils;

import java.util.List;

/**
 * Created by gaojl on 2017/4/17 9:29
 *
 * @author gaojl
 */
@Repository
public class PassengerComplaintDaoImpl implements PassengerComplaintDao {
    @Autowired
    private PassengerComplaintMapper mapper;

    /**
     * 乘客投诉信息
     *
     * @param page
     * @param rows
     * @param address
     * @param companyId
     * @param orderId
     * @param passengerPhone
     * @param startDate
     * @param endDate
     * @return
     */
    @Override
    public List<PassengerComplaint> listForPage(int page, int rows, Integer address, String companyId, String orderId, String passengerPhone, String startDate, String endDate) {
        PassengerComplaintExample example = new PassengerComplaintExample();
        PassengerComplaintExample.Criteria criteria = example.createCriteria();
        if (StringUtils.hasText(companyId)) {
            criteria.andCompanyIdEqualTo(companyId);
        }
        if (StringUtils.hasText(orderId)) {
            criteria.andOrderIdEqualTo(orderId);
        }
        if (StringUtils.hasText(startDate) && StringUtils.hasText(endDate)) {
            String dateFormat = "YYYY-MM-DD HH:mm:ss";
            String numFormat = "YYYYMMDDHHmmss";
            if (startDate.equals(endDate)) {
                long date = DateUtil.parseString(startDate, dateFormat,numFormat );
                criteria.andComplaintTimeEqualTo(date);
            }
            long start = DateUtil.parseString(startDate, dateFormat, numFormat);
            long end = DateUtil.parseString(endDate, dateFormat, numFormat);
            criteria.andComplaintTimeBetween(start, end);
        }

        PageHelper.startPage(page, rows);
        List<PassengerComplaint> list = mapper.selectByExample(example);
        return list;
    }
}

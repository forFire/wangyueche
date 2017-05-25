package com.sichuang.service;

import com.sichuang.bean.vo.EasyUIResult;

/**
 * Created by gaojl on 2017/4/17 13:24
 * 乘客投诉信息service
 *
 * @author gaojl
 */
public interface PassengerComplaintService {
    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String orderId, String passengerPhone, String startDate, String endDate);
}

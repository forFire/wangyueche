package com.sichuang.service;

import com.sichuang.bean.entity.DriverReputation;
import com.sichuang.bean.vo.EasyUIResult;

import java.util.List;

/**
 * Created by gaojl on 2017/4/17 13:25
 * 驾驶员信誉信息
 *
 * @author gaojl
 */
public interface DriverReputationService {
    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String licenseId, String startDate, String endDate);
}

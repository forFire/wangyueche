package com.sichuang.service;

/**
 * Created by gaojl on 2017/4/27 16:58
 *
 * @author gaojl
 */
public interface OrderStatService {
    /**
     * echart统计信息
     *
     * @return
     */
    String echartStatInfo(String companyId, String startDate, String endDate);
}

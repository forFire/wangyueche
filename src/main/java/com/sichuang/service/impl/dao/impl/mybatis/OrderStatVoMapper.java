package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.vo.statistics.OrderStatVo;
import com.sichuang.util.base.MyBatis;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by gaojl on 2017/4/27 14:31
 * 企业订单统计
 *
 * @author gaojl
 */
@MyBatis
public interface OrderStatVoMapper {
    List<OrderStatVo> selectOrderCount(@Param("companyId") String companyId, @Param("startDate") Long startDate, @Param("endDate") Long endDate);
}

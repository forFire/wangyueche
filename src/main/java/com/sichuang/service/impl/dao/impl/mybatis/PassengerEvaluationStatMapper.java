package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.vo.statistics.PassengerEvaluationStat;
import com.sichuang.util.base.MyBatis;
import org.apache.ibatis.annotations.Param;

import java.util.List;

/**
 * Created by gaojl on 2017/5/2 21:43
 *
 * @author gaojl
 */
@MyBatis
public interface PassengerEvaluationStatMapper {
    List<PassengerEvaluationStat> listStat(@Param("companyId") String companyId, @Param("startDate") Long startDate, @Param("endDate") Long endDate);
}

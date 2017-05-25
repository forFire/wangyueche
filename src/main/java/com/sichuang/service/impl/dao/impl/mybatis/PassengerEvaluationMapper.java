package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.PassengerEvaluation;
import com.sichuang.bean.entity.PassengerEvaluationExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface PassengerEvaluationMapper {
    int countByExample(PassengerEvaluationExample example);

    int deleteByExample(PassengerEvaluationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PassengerEvaluation record);

    int insertSelective(PassengerEvaluation record);

    List<PassengerEvaluation> selectByExample(PassengerEvaluationExample example);

    PassengerEvaluation selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PassengerEvaluation record, @Param("example") PassengerEvaluationExample example);

    int updateByExample(@Param("record") PassengerEvaluation record, @Param("example") PassengerEvaluationExample example);

    int updateByPrimaryKeySelective(PassengerEvaluation record);

    int updateByPrimaryKey(PassengerEvaluation record);
}
package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.Abnormalaggregation;
import com.sichuang.bean.entity.AbnormalaggregationExample;
import com.sichuang.util.base.MyBatis;
import org.apache.ibatis.annotations.Param;
import java.util.List;

@MyBatis
public interface AbnormalaggregationMapper {
    int countByExample(AbnormalaggregationExample example);

    int deleteByExample(AbnormalaggregationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(Abnormalaggregation record);

    int insertSelective(Abnormalaggregation record);

    List<Abnormalaggregation> selectByExample(AbnormalaggregationExample example);

    Abnormalaggregation selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Abnormalaggregation record, @Param("example") AbnormalaggregationExample example);

    int updateByExample(@Param("record") Abnormalaggregation record, @Param("example") AbnormalaggregationExample example);

    int updateByPrimaryKeySelective(Abnormalaggregation record);

    int updateByPrimaryKey(Abnormalaggregation record);
}
package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.CompanyFare;
import com.sichuang.bean.entity.CompanyFareExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface CompanyFareMapper {
    int countByExample(CompanyFareExample example);

    int deleteByExample(CompanyFareExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CompanyFare record);

    int insertSelective(CompanyFare record);

    List<CompanyFare> selectByExample(CompanyFareExample example);

    CompanyFare selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CompanyFare record, @Param("example") CompanyFareExample example);

    int updateByExample(@Param("record") CompanyFare record, @Param("example") CompanyFareExample example);

    int updateByPrimaryKeySelective(CompanyFare record);

    int updateByPrimaryKey(CompanyFare record);
}
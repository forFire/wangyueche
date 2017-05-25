package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.CompanyPay;
import com.sichuang.bean.entity.CompanyPayExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface CompanyPayMapper {
    int countByExample(CompanyPayExample example);

    int deleteByExample(CompanyPayExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(CompanyPay record);

    int insertSelective(CompanyPay record);

    List<CompanyPay> selectByExample(CompanyPayExample example);

    CompanyPay selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") CompanyPay record, @Param("example") CompanyPayExample example);

    int updateByExample(@Param("record") CompanyPay record, @Param("example") CompanyPayExample example);

    int updateByPrimaryKeySelective(CompanyPay record);

    int updateByPrimaryKey(CompanyPay record);
}
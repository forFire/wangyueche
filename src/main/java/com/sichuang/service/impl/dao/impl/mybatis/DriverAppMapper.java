package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.DriverApp;
import com.sichuang.bean.entity.DriverAppExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface DriverAppMapper {
    int countByExample(DriverAppExample example);

    int deleteByExample(DriverAppExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DriverApp record);

    int insertSelective(DriverApp record);

    List<DriverApp> selectByExample(DriverAppExample example);

    DriverApp selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DriverApp record, @Param("example") DriverAppExample example);

    int updateByExample(@Param("record") DriverApp record, @Param("example") DriverAppExample example);

    int updateByPrimaryKeySelective(DriverApp record);

    int updateByPrimaryKey(DriverApp record);
}
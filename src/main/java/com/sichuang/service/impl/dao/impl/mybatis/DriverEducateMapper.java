package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.DriverEducate;
import com.sichuang.bean.entity.DriverEducateExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface DriverEducateMapper {
    int countByExample(DriverEducateExample example);

    int deleteByExample(DriverEducateExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DriverEducate record);

    int insertSelective(DriverEducate record);

    List<DriverEducate> selectByExample(DriverEducateExample example);

    DriverEducate selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DriverEducate record, @Param("example") DriverEducateExample example);

    int updateByExample(@Param("record") DriverEducate record, @Param("example") DriverEducateExample example);

    int updateByPrimaryKeySelective(DriverEducate record);

    int updateByPrimaryKey(DriverEducate record);
}
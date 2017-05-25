package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.DriverPosition;
import com.sichuang.bean.entity.DriverPositionExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface DriverPositionMapper {
    int countByExample(DriverPositionExample example);

    int deleteByExample(DriverPositionExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DriverPosition record);

    int insertSelective(DriverPosition record);

    List<DriverPosition> selectByExample(DriverPositionExample example);

    DriverPosition selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DriverPosition record, @Param("example") DriverPositionExample example);

    int updateByExample(@Param("record") DriverPosition record, @Param("example") DriverPositionExample example);

    int updateByPrimaryKeySelective(DriverPosition record);

    int updateByPrimaryKey(DriverPosition record);
}
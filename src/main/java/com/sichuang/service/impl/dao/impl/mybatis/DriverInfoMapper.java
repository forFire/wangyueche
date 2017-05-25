package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.DriverInfo;
import com.sichuang.bean.entity.DriverInfoExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface DriverInfoMapper {
    int countByExample(DriverInfoExample example);

    int deleteByExample(DriverInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DriverInfo record);

    int insertSelective(DriverInfo record);

    List<DriverInfo> selectByExample(DriverInfoExample example);

    DriverInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DriverInfo record, @Param("example") DriverInfoExample example);

    int updateByExample(@Param("record") DriverInfo record, @Param("example") DriverInfoExample example);

    int updateByPrimaryKeySelective(DriverInfo record);

    int updateByPrimaryKey(DriverInfo record);
}
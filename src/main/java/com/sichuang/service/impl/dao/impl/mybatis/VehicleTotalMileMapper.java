package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.VehicleTotalMile;
import com.sichuang.bean.entity.VehicleTotalMileExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface VehicleTotalMileMapper {
    int countByExample(VehicleTotalMileExample example);

    int deleteByExample(VehicleTotalMileExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(VehicleTotalMile record);

    int insertSelective(VehicleTotalMile record);

    List<VehicleTotalMile> selectByExample(VehicleTotalMileExample example);

    VehicleTotalMile selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") VehicleTotalMile record, @Param("example") VehicleTotalMileExample example);

    int updateByExample(@Param("record") VehicleTotalMile record, @Param("example") VehicleTotalMileExample example);

    int updateByPrimaryKeySelective(VehicleTotalMile record);

    int updateByPrimaryKey(VehicleTotalMile record);
}
package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.VehicleInfo;
import com.sichuang.bean.entity.VehicleInfoExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface VehicleInfoMapper {
    int countByExample(VehicleInfoExample example);

    int deleteByExample(VehicleInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(VehicleInfo record);

    int insertSelective(VehicleInfo record);

    List<VehicleInfo> selectByExample(VehicleInfoExample example);

    VehicleInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") VehicleInfo record, @Param("example") VehicleInfoExample example);

    int updateByExample(@Param("record") VehicleInfo record, @Param("example") VehicleInfoExample example);

    int updateByPrimaryKeySelective(VehicleInfo record);

    int updateByPrimaryKey(VehicleInfo record);
}
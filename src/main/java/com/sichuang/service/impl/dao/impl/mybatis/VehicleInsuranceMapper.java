package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.VehicleInsurance;
import com.sichuang.bean.entity.VehicleInsuranceExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface VehicleInsuranceMapper {
    int countByExample(VehicleInsuranceExample example);

    int deleteByExample(VehicleInsuranceExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(VehicleInsurance record);

    int insertSelective(VehicleInsurance record);

    List<VehicleInsurance> selectByExample(VehicleInsuranceExample example);

    VehicleInsurance selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") VehicleInsurance record, @Param("example") VehicleInsuranceExample example);

    int updateByExample(@Param("record") VehicleInsurance record, @Param("example") VehicleInsuranceExample example);

    int updateByPrimaryKeySelective(VehicleInsurance record);

    int updateByPrimaryKey(VehicleInsurance record);
}
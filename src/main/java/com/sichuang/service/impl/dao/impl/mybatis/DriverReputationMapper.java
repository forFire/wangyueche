package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.DriverReputation;
import com.sichuang.bean.entity.DriverReputationExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface DriverReputationMapper {
    int countByExample(DriverReputationExample example);

    int deleteByExample(DriverReputationExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(DriverReputation record);

    int insertSelective(DriverReputation record);

    List<DriverReputation> selectByExample(DriverReputationExample example);

    DriverReputation selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") DriverReputation record, @Param("example") DriverReputationExample example);

    int updateByExample(@Param("record") DriverReputation record, @Param("example") DriverReputationExample example);

    int updateByPrimaryKeySelective(DriverReputation record);

    int updateByPrimaryKey(DriverReputation record);
}
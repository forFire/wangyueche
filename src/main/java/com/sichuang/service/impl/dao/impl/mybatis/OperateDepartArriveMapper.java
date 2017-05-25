package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.OperateDepartArrive;
import com.sichuang.bean.entity.OperateDepartArriveExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface OperateDepartArriveMapper {
    int countByExample(OperateDepartArriveExample example);

    int deleteByExample(OperateDepartArriveExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(OperateDepartArrive record);

    int insertSelective(OperateDepartArrive record);

    List<OperateDepartArrive> selectByExample(OperateDepartArriveExample example);

    OperateDepartArrive selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") OperateDepartArrive record, @Param("example") OperateDepartArriveExample example);

    int updateByExample(@Param("record") OperateDepartArrive record, @Param("example") OperateDepartArriveExample example);

    int updateByPrimaryKeySelective(OperateDepartArrive record);

    int updateByPrimaryKey(OperateDepartArrive record);
}
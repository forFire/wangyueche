package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.PassengerInfo;
import com.sichuang.bean.entity.PassengerInfoExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface PassengerInfoMapper {
    int countByExample(PassengerInfoExample example);

    int deleteByExample(PassengerInfoExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PassengerInfo record);

    int insertSelective(PassengerInfo record);

    List<PassengerInfo> selectByExample(PassengerInfoExample example);

    PassengerInfo selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PassengerInfo record, @Param("example") PassengerInfoExample example);

    int updateByExample(@Param("record") PassengerInfo record, @Param("example") PassengerInfoExample example);

    int updateByPrimaryKeySelective(PassengerInfo record);

    int updateByPrimaryKey(PassengerInfo record);
}
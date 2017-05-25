package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.AlarmInformations;
import com.sichuang.bean.entity.AlarmInformationsExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface AlarmInformationsMapper {
    int countByExample(AlarmInformationsExample example);

    int deleteByExample(AlarmInformationsExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(AlarmInformations record);

    int insertSelective(AlarmInformations record);

    List<AlarmInformations> selectByExample(AlarmInformationsExample example);

    AlarmInformations selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") AlarmInformations record, @Param("example") AlarmInformationsExample example);

    int updateByExample(@Param("record") AlarmInformations record, @Param("example") AlarmInformationsExample example);

    int updateByPrimaryKeySelective(AlarmInformations record);

    int updateByPrimaryKey(AlarmInformations record);
}
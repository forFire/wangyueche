package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.Jtt415;
import com.sichuang.bean.entity.Jtt415Example;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface Jtt415Mapper {
    int countByExample(Jtt415Example example);

    int deleteByExample(Jtt415Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(Jtt415 record);

    int insertSelective(Jtt415 record);

    List<Jtt415> selectByExample(Jtt415Example example);

    Jtt415 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Jtt415 record, @Param("example") Jtt415Example example);

    int updateByExample(@Param("record") Jtt415 record, @Param("example") Jtt415Example example);

    int updateByPrimaryKeySelective(Jtt415 record);

    int updateByPrimaryKey(Jtt415 record);
}
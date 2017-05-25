package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.Jtt697;
import com.sichuang.bean.entity.Jtt697Example;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface Jtt697Mapper {
    int countByExample(Jtt697Example example);

    int deleteByExample(Jtt697Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(Jtt697 record);

    int insertSelective(Jtt697 record);

    List<Jtt697> selectByExample(Jtt697Example example);

    Jtt697 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Jtt697 record, @Param("example") Jtt697Example example);

    int updateByExample(@Param("record") Jtt697 record, @Param("example") Jtt697Example example);

    int updateByPrimaryKeySelective(Jtt697 record);

    int updateByPrimaryKey(Jtt697 record);
}
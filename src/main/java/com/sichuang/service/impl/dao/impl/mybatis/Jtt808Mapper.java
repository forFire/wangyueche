package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.Jtt808;
import com.sichuang.bean.entity.Jtt808Example;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface Jtt808Mapper {
    int countByExample(Jtt808Example example);

    int deleteByExample(Jtt808Example example);

    int deleteByPrimaryKey(Integer id);

    int insert(Jtt808 record);

    int insertSelective(Jtt808 record);

    List<Jtt808> selectByExample(Jtt808Example example);

    Jtt808 selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") Jtt808 record, @Param("example") Jtt808Example example);

    int updateByExample(@Param("record") Jtt808 record, @Param("example") Jtt808Example example);

    int updateByPrimaryKeySelective(Jtt808 record);

    int updateByPrimaryKey(Jtt808 record);
}
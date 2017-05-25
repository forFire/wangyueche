package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.GmDriverLicense;
import com.sichuang.bean.entity.GmDriverLicenseExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface GmDriverLicenseMapper {
    int countByExample(GmDriverLicenseExample example);

    int deleteByExample(GmDriverLicenseExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(GmDriverLicense record);

    int insertSelective(GmDriverLicense record);

    List<GmDriverLicense> selectByExample(GmDriverLicenseExample example);

    GmDriverLicense selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") GmDriverLicense record, @Param("example") GmDriverLicenseExample example);

    int updateByExample(@Param("record") GmDriverLicense record, @Param("example") GmDriverLicenseExample example);

    int updateByPrimaryKeySelective(GmDriverLicense record);

    int updateByPrimaryKey(GmDriverLicense record);
}
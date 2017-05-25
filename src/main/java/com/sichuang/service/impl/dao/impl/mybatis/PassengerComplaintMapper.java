package com.sichuang.service.impl.dao.impl.mybatis;

import com.sichuang.bean.entity.PassengerComplaint;
import com.sichuang.bean.entity.PassengerComplaintExample;
import com.sichuang.util.base.MyBatis;
import java.util.List;
import org.apache.ibatis.annotations.Param;

@MyBatis
public interface PassengerComplaintMapper {
    int countByExample(PassengerComplaintExample example);

    int deleteByExample(PassengerComplaintExample example);

    int deleteByPrimaryKey(Integer id);

    int insert(PassengerComplaint record);

    int insertSelective(PassengerComplaint record);

    List<PassengerComplaint> selectByExample(PassengerComplaintExample example);

    PassengerComplaint selectByPrimaryKey(Integer id);

    int updateByExampleSelective(@Param("record") PassengerComplaint record, @Param("example") PassengerComplaintExample example);

    int updateByExample(@Param("record") PassengerComplaint record, @Param("example") PassengerComplaintExample example);

    int updateByPrimaryKeySelective(PassengerComplaint record);

    int updateByPrimaryKey(PassengerComplaint record);
}
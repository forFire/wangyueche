package com.sichuang.service;

import com.sichuang.bean.entity.Abnormalaggregation;
import com.sichuang.bean.vo.baseinfo.AbnormalagVo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.AbnormalaggregationVo;

import java.util.List;

/**
 * Created by zhangfei on 2017/4/26.
 */
public interface AbnormalAggService {


    EasyUIResult listForPage(int page, int rows, Abnormalaggregation abnormalaggregation);

    List<Abnormalaggregation> listAll();

    Abnormalaggregation findById(int id);

    int save(Abnormalaggregation abnormalaggregation);

    int update(Abnormalaggregation abnormalaggregation);

    int changeStatus(Integer id,Integer status);

    List<AbnormalagVo> getNum();

}

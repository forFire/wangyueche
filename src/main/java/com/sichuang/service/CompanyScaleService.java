package com.sichuang.service;

import com.sichuang.bean.entity.CompanyScale;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.CompanyScaleVo;

/**
 * Created by gaojl on 2017/4/12 13:49
 *
 * @author gaojl
 */
public interface CompanyScaleService {
    CompanyScaleVo selectCompanyScale(String companyId);

    EasyUIResult listForPage(int page, int rows, String companyId);
}

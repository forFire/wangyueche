package com.sichuang.service;

import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.baseinfo.CompanyPermitVo;

/**
 * Created by gaojl on 2017/4/12 13:48
 *
 * @author gaojl
 */
public interface CompanyPermitService {
    CompanyPermitVo selectCompanyPermit(Integer address, String companyId);

    EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String state);
}

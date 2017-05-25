package com.sichuang.service;

import com.sichuang.bean.entity.CompanyInfo;
import com.sichuang.bean.vo.EasyUIResult;

import java.util.HashMap;

/**
 * Created by gaojl on 2017/4/12 13:46
 *
 * @author gaojl
 */
public interface CompanyInfoService {

    CompanyInfo selectCompanyInfo(Integer address, String companyId);

    CompanyInfo selectByState(String companyId,Integer state);

    EasyUIResult listForPage(int page, int rows, String companyId, Integer state);

    HashMap<String, String> idWithName();
}

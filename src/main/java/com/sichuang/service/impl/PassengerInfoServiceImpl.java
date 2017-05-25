package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.PassengerInfo;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.operation.PassengerInfoVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.PassengerInfoService;
import com.sichuang.service.impl.dao.PassengerInfoDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 16:25
 *
 * @author gaojl
 */
@Service
public class PassengerInfoServiceImpl implements PassengerInfoService {
    @Autowired
    private PassengerInfoDao dao;
    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, String companyId, String passengerName, String passengerPhone) {
        List<PassengerInfo> list = dao.listForPage(page, rows, companyId, passengerName, passengerPhone);
        List<PassengerInfoVo> voList = new ArrayList<>();
        if (list.size() >0) {
            Map<String, String> map = infoService.idWithName();
            for (PassengerInfo info : list) {
                PassengerInfoVo vo = new PassengerInfoVo(info);
                vo.setCompanyName(map.get(info.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<PassengerInfoVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

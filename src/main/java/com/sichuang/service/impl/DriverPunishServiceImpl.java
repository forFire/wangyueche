package com.sichuang.service.impl;

import com.github.pagehelper.PageInfo;
import com.sichuang.bean.entity.DriverPunish;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.operation.DriverPunishVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.DriverPunishService;
import com.sichuang.service.impl.dao.DriverPunishDao;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/17 17:13
 *
 * @author gaojl
 */
@Service
public class DriverPunishServiceImpl implements DriverPunishService {
    @Autowired
    private DriverPunishDao dao;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String licenseId, String startDate, String endDate) {
        List<DriverPunish> list = dao.listForPage(page, rows, address, companyId, licenseId, startDate, endDate);
        List<DriverPunishVo> voList = new ArrayList<>();
        if (list.size() > 0) {
            Map<String, String> map = infoService.idWithName();
            for (DriverPunish punish : list) {
                DriverPunishVo vo = new DriverPunishVo(punish);
                vo.setCompanyName(map.get(punish.getCompanyId()));
                voList.add(vo);
            }
        }
        PageInfo<DriverPunishVo> pageInfo = new PageInfo<>(voList);
        EasyUIResult result = new EasyUIResult();
        result.setTotal(pageInfo.getTotal());
        result.setRows(pageInfo.getList());
        return result;
    }
}

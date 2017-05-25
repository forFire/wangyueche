package com.sichuang.controller.statistics;

import com.sichuang.service.OrderStatService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by gaojl on 2017/4/28 9:39
 *
 * @author gaojl
 */
@Controller
@RequestMapping(value = "/statistics", method = RequestMethod.GET)
public class OrderStatController {
    @Autowired
    private OrderStatService service;

    @ResponseBody
    @RequestMapping(value = "/order/view", produces = "application/json;charset=UTF-8")
    public String view(@RequestParam(value = "companyId", required = false) String companyId, @RequestParam(value = "startDate", required = false) String startDate, @RequestParam(value = "endDate", required = false) String endDate) {
        return service.echartStatInfo(companyId, startDate, endDate);
    }
}

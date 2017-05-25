package com.sichuang.controller.operation;

import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.service.PassengerEvaluationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

/**
 * Created by gaojl on 2017/4/18 0:18
 * 运营监管——乘客评价信息
 *
 * @author gaojl
 */
@Controller
@RequestMapping(value = "/operation", method = RequestMethod.GET)
public class PassengerEvaluationController {
    @Autowired
    private PassengerEvaluationService service;

    @ResponseBody
    @RequestMapping(value = "/passengerEvaluation/list")
    public EasyUIResult listForPage(int page, int rows, Integer address, String companyId, String orderId, String vehicleNo, String licenseId, String driverPhone, String startDate, String endDate) {
        return null;
    }
}

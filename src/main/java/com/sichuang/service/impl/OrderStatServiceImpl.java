package com.sichuang.service.impl;

import com.github.abel533.echarts.AxisPointer;
import com.github.abel533.echarts.Option;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.*;
import com.github.abel533.echarts.feature.MagicType;
import com.github.abel533.echarts.json.GsonUtil;
import com.github.abel533.echarts.series.Bar;
import com.github.abel533.echarts.series.Line;
import com.github.abel533.echarts.style.CrossStyle;
import com.sichuang.bean.vo.statistics.OrderStatVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.OrderStatService;
import com.sichuang.service.impl.dao.impl.mybatis.OrderStatVoMapper;
import com.sichuang.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/27 17:04
 *
 * @author gaojl
 */
@Service
public class OrderStatServiceImpl implements OrderStatService {
    @Autowired
    private OrderStatVoMapper mapper;
    @Autowired
    private CompanyInfoService infoService;

    /**
     * echart统计信息
     *
     * @return
     */
    @Override
    public String echartStatInfo(String companyId,String startDate,String endDate) {
        Long start = null;
        Long end = null;
        if (StringUtils.hasText(startDate) && StringUtils.hasText(endDate)) {
            String dateFormat = "yyyy-MM-dd HH:mm:ss";
            String numFormat = "yyyyMMddHHmmss";
            start = DateUtil.parseString(startDate, dateFormat, numFormat);
            end = DateUtil.parseString(endDate, dateFormat, numFormat);
        }
        List<OrderStatVo> list = mapper.selectOrderCount(companyId,start,end);
        if (list.size() < 1) {
            return null;
        }
        Map<String, String> map = infoService.idWithName();
        for (OrderStatVo vo : list) {
            vo.setCompanyName(map.get(vo.getCompanyId()));
            if (vo.getMatchOrder() != null) {
                Double rate = Math.ceil(vo.getMatchOrder() * 10000.0 / vo.getTotalOrder()) / 100;
                vo.setMatchRate(rate);
            } else {
                vo.setMatchOrder(0);
                vo.setMatchRate(0.00);
            }
        }
        //将各个数据取出，放入数组中
        int arrayLength = list.size();
        String[] companyNames = new String[arrayLength];
        Integer[] totalNum = new Integer[arrayLength];
        Integer[] matchNum = new Integer[arrayLength];
        Double[] matchRate = new Double[arrayLength];
        for (int i = 0; i < arrayLength; i++) {
            OrderStatVo orderStatVo = list.get(i);
            companyNames[i] = orderStatVo.getCompanyName();
            totalNum[i] = orderStatVo.getTotalOrder();
            matchNum[i] = orderStatVo.getMatchOrder();
            matchRate[i] = orderStatVo.getMatchRate();
        }
        Option option = new Option();
        //option.title().text("未来一周气温变化").subtext("纯属虚构");
        option.tooltip().trigger(Trigger.axis).axisPointer();
        option.legend("总订单", "成功订单","成功率");

        AxisPointer optionPointer = new AxisPointer();
        optionPointer.setType(PointerType.cross);
        option.tooltip().trigger(Trigger.axis).setAxisPointer(optionPointer);
        option.toolbox().show(true).feature(
                Tool.mark,
                Tool.dataView,
                new MagicType(Magic.line, Magic.bar).show(true),
                Tool.restore,
                Tool.saveAsImage);

        option.calculable(true);

        //设置x轴
        CategoryAxis categoryAxis = new CategoryAxis();
        categoryAxis.data(companyNames);
        option.xAxis(categoryAxis);


        //左侧订单y轴
        ValueAxis orderNumValue = new ValueAxis();
        orderNumValue.setType(AxisType.value);
        orderNumValue.setName("订单量");
        orderNumValue.axisLabel().formatter("{value} 单");

        //右侧成功率y轴
        ValueAxis matchRateValue = new ValueAxis();
        matchRateValue.setType(AxisType.value);
        matchRateValue.setName("成功率");
        matchRateValue.setMin(0);
        matchRateValue.setMax(100);
        matchRateValue.axisLabel().formatter("{value} %");
        matchRateValue.boundaryGap(false);
        option.yAxis(orderNumValue,matchRateValue);

        Bar totalBar = new Bar();
        totalBar.name("总订单").data(totalNum);

        Bar matchBar = new Bar();
        matchBar.name("成功订单").data(matchNum);

        Bar rateBar = new Bar();
        rateBar.name("成功率").data(matchRate).yAxisIndex(1);

        option.series(totalBar,matchBar,rateBar);

        String optionStr = GsonUtil.format(option);
        System.out.println(optionStr);
        return optionStr;
    }
}

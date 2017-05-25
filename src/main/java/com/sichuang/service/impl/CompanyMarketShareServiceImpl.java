package com.sichuang.service.impl;

import com.github.abel533.echarts.AxisPointer;
import com.github.abel533.echarts.Option;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.*;
import com.github.abel533.echarts.feature.MagicType;
import com.github.abel533.echarts.json.GsonUtil;
import com.github.abel533.echarts.series.Bar;
import com.sichuang.bean.vo.statistics.CompanyMarketShare;
import com.sichuang.bean.vo.statistics.OrderStatVo;
import com.sichuang.service.CompanyInfoService;
import com.sichuang.service.CompanyMarketShareService;
import com.sichuang.service.impl.dao.impl.mybatis.CompanyMarketShareMapper;
import com.sichuang.util.DateUtil;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.util.StringUtils;

import java.util.List;
import java.util.Map;

/**
 * Created by gaojl on 2017/4/30 11:45
 *
 * @author gaojl
 */
@Service
public class CompanyMarketShareServiceImpl implements CompanyMarketShareService {
    @Autowired
    private CompanyMarketShareMapper mapper;

    @Autowired
    private CompanyInfoService infoService;

    @Override
    public String marketShareStat(String companyId, String startDate, String endDate) {

        Long start = null;
        Long end = null;
        if (StringUtils.hasText(startDate) && StringUtils.hasText(endDate)) {
            String dateFormat = "yyyy-MM-dd HH:mm:ss";
            String numFormat = "yyyyMMddHHmmss";
            start = DateUtil.parseString(startDate, dateFormat, numFormat);
            end = DateUtil.parseString(endDate, dateFormat, numFormat);
        }
        List<CompanyMarketShare> list = mapper.listStat(companyId,start,end);
        if (list.size() < 1) {
            return null;
        }
        Map<String, String> map = infoService.idWithName();
        for (CompanyMarketShare marketShare : list) {
            marketShare.setCompanyName(map.get(marketShare.getCompanyId()));
        }
        //将各个数据取出，放入数组中
        int arrayLength = list.size();
        String[] companyNames = new String[arrayLength];
        Integer[] totalVehicle = new Integer[arrayLength];
        Integer[] totalDriver = new Integer[arrayLength];
        for (int i = 0; i < arrayLength; i++) {
            CompanyMarketShare marketShare = list.get(i);
            companyNames[i] = marketShare.getCompanyName();
            totalVehicle[i] = marketShare.getTotalVehicle();
            totalDriver[i] = marketShare.getTotalDriver();
        }
        Option option = new Option();
        //option.title().text("未来一周气温变化").subtext("纯属虚构");
        option.tooltip().trigger(Trigger.axis).axisPointer();
        option.legend("车辆数","驾驶员数");

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


        //左侧y轴
        ValueAxis orderNumValue = new ValueAxis();
        orderNumValue.setType(AxisType.value);
        orderNumValue.setName("数量");
        orderNumValue.axisLabel().formatter("{value} 辆（位）");

        Bar totalBar = new Bar();
        totalBar.name("车辆数").data(totalVehicle);

        Bar matchBar = new Bar();
        matchBar.name("驾驶员数").data(totalDriver);

        option.series(totalBar,matchBar);

        String optionStr = GsonUtil.format(option);
        return optionStr;
    }
}

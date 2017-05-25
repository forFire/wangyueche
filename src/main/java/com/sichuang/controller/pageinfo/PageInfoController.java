package com.sichuang.controller.pageinfo;

import com.github.abel533.echarts.Option;
import com.github.abel533.echarts.axis.CategoryAxis;
import com.github.abel533.echarts.axis.ValueAxis;
import com.github.abel533.echarts.code.Magic;
import com.github.abel533.echarts.code.MarkType;
import com.github.abel533.echarts.code.Tool;
import com.github.abel533.echarts.code.Trigger;
import com.github.abel533.echarts.data.Data;
import com.github.abel533.echarts.data.PointData;
import com.github.abel533.echarts.feature.MagicType;
import com.github.abel533.echarts.json.GsonUtil;
import com.github.abel533.echarts.series.Bar;
import com.github.abel533.echarts.series.Line;
import com.github.abel533.echarts.series.MarkPoint;
import com.sichuang.util.base.BaseController;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import java.util.ArrayList;
import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/21.
 */
@Controller
@RequestMapping(value = "/pageinfo",method = RequestMethod.GET)
public class PageInfoController extends BaseController{

    @RequestMapping(value = "/test",produces = "application/json;charset=UTF-8")
    @ResponseBody
    public String test(){
        Option option = new Option();
        option.title().text("未来一周气温变化").subtext("纯属虚构");
        option.tooltip().trigger(Trigger.axis);
        option.legend("最高气温","最低气温");

        option.toolbox().show(true).feature(
                Tool.mark,
                Tool.dataView,
                new MagicType(Magic.line, Magic.bar),
                Tool.restore,
                Tool.saveAsImage);

        option.calculable(true);

        CategoryAxis categoryAxis = new CategoryAxis();
        categoryAxis.boundaryGap(false);
        categoryAxis.data("周一","周二","周三","周四","周五","周六","周日");
        option.xAxis(categoryAxis);

        ValueAxis valueAxis = new ValueAxis();
        valueAxis.axisLabel().formatter("{value} °C");
        valueAxis.boundaryGap(false);
        option.yAxis(valueAxis);


        Line lineMax = new Line();
        List liMax = new ArrayList();
        liMax.add(new PointData().type(MarkType.max).name("最大值"));
        liMax.add(new PointData().type(MarkType.min).name("最小值"));

        List liMaxAverage = new ArrayList();
        liMaxAverage.add(new PointData().type(MarkType.average).name("平均值"));
        lineMax.name("最高气温").data(11,11,15,13,12,13,10).markPoint().data(liMax.toArray());

        List lineMaxAverage = new ArrayList();
        lineMaxAverage.add(new PointData().type(MarkType.average).name("平均值"));
        lineMax.markLine().data(lineMaxAverage.toArray());


        Line lineMin = new Line();
        List liMin = new ArrayList();
        liMin.add(new PointData().name("周最低").value(-2).xAxis(1).yAxis(-3/2));
        lineMin.name("最低气温").data(1, -2, 2, 5, 3, 2, 1).markPoint().data(liMin.toArray());

        List liMinAverage = new ArrayList();
        liMinAverage.add(new PointData().type(MarkType.average).name("平均值"));
        lineMin.markLine().data(liMinAverage.toArray());

        option.series(lineMax,lineMin);

        String optionStr = GsonUtil.format(option);
        System.out.println(optionStr);
        return optionStr;
    }

}

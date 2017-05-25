/*!
 * Created by wangpeng on 2017/3/29.
 */
(function($) {
    //构造器
    function statistics(url) {
        this.server=new Carnet.module.server();
        this.listViewId='dataChart';
        this.url=url;
    };
    statistics.prototype = {
        constructor: statistics,
        init:function(){
            var _self=this;
            _self.bindEvents();
        },
        bindEvents:function(){
            var _self=this;
            _self.loadChart();
            $('#searchBtn').bind('click',function(){
                _self.loadChart();
            })
        },
        loadChart:function(){
            var _self=this;
            var subData={
                // lat:$('#sLat').val(),
                companyId: $('#oCompany').val(),
                address: $('#oArea').val(),
                startTime:$('#startTime').val(),
                endTime:$('#endTime').val()
            };

            _self.server.dataChart(_self.url,subData).done(function(res){
                var myChart = echarts.init(document.getElementById(_self.listViewId));
                //模拟数据
                var option = {
                    color: ['#3398DB'],
                    tooltip : {
                        trigger: 'axis',
                        axisPointer : {            // 坐标轴指示器，坐标轴触发有效
                            type : 'shadow'        // 默认为直线，可选为：'line' | 'shadow'
                        }
                    },
                    toolbox: {
                        show : true,
                        feature : {
                            /*mark : {show: true},*/
                            /*dataView : {show: true, readOnly: false},*/
                            magicType : {show: true, type: ['line', 'bar']},
                            restore : {show: true},
                            saveAsImage : {show: true}
                        }
                    },
                    grid: {
                        left: '3%',
                        right: '4%',
                        bottom: '3%',
                        containLabel: true
                    },
                    xAxis : [
                        {
                            type : 'category',
                            data : ['Mon', 'Tue', 'Wed', 'Thu', 'Fri', 'Sat', 'Sun'],
                            axisTick: {
                                alignWithLabel: true
                            }
                        }
                    ],
                    yAxis : [
                        {
                            type : 'value'
                        }
                    ],
                    series : [
                        {
                            name:'直接访问',
                            type:'bar',
                            barWidth: '60%',
                            data:[10, 52, 200, 334, 390, 330, 220]
                        }
                    ]
                };

                // 为echarts对象加载数据
                myChart.setOption(option);
            })
        }

    }
    //将服务模型添加到全局变量中
    Carnet.module["statistics"] = statistics;
})(jQuery);
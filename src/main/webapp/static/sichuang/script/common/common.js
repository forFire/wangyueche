/**
 * Created by wangpeng on 2017/3/27.
 */
var cLib = {}; //定义公共库全局变量
(function(lib) {
  base = {
    getCookie: function(c_name) { //获取cookie
      if (document.cookie.length > 0) {
        c_start = document.cookie.indexOf(c_name + "=");
        if (c_start != -1) {
          c_start = c_start + c_name.length + 1;
          c_end = document.cookie.indexOf(";", c_start);
          if (c_end == -1)
            c_end = document.cookie.length;
          return unescape(document.cookie.substring(c_start, c_end))
        }
      }
      return "";
    },
    setCookie: function(c_name, value, expiredays, path) { //设置cookie
      var exdate = new Date();
      exdate.setDate(exdate.getDate() + expiredays);
      document.cookie = c_name + "=" + escape(value) + ((expiredays == null) ? "" : ";expires=" + exdate.toGMTString()) + ((path == null) ? "" : ";path=" + path + ";domain=capcare.com.cn");
    },
    clearCookie: function() { //清除cookie
      var keys = document.cookie.match(/[^ =;]+(?=\=)/g);
      if (keys) {
        for (var i = keys.length; i--;)
          document.cookie = keys[i] + '=0;expires=' + new Date(0).toUTCString()
      }
    },
    //设置datagrid中文显示
    setLangChina: function(id) {

      $('#' + id + '').datagrid('getPager').pagination({ //分页栏下方文字显示
        beforePageText: '第', //页数文本框前显示的汉字
        afterPageText: '页    共 {pages} 页',
        displayMsg: '当前显示：从第{from}条到{to}条 共{total}条记录',
        onBeforeRefresh: function(pageNumber, pageSize) {
          $(this).pagination('loading');
          //alert('pageNumber:'+pageNumber+',pageSize:'+pageSize);
          $(this).pagination('loaded');
        }
      });
    },
    //保留小数位
    digitFn: function(digit, length) { //digit数字，length长度
      length = length ? parseInt(length) : 0;
      if (length <= 0) return Math.round(digit);
      digit = Math.round(digit * Math.pow(10, length)) / Math.pow(10, length);
      return digit;
    },
    //时间戳转日期
    formatterDateDay: function (lmsd) {
      if (lmsd != null && lmsd != '') {
        var date = new Date();
        date.setTime(lmsd);
        var day = date.getDate().toString();
        day = day.length == 1 ? '0' + day : day;
        var month = (date.getMonth() + 1).toString();
        month = month.length == 1 ? '0' + month : month;
        var year = date.getFullYear();
        var hour = date.getHours().toString();
        hour = hour.length == 1 ? '0' + hour : hour;
        var min = date.getMinutes().toString();
        min = min.length == 1 ? '0' + min : min;
        var second = date.getSeconds().toString();
        second = second.length == 1 ? '0' + second : second;
        return (year + '-' + month + '-' + day + ' ' + hour + ':' + min + ':' + second);
      } else {
        return ('无');
      }
    },
    //md5加密
    md5: function(psw) {
      return $.md5(psw.toLowerCase()).toLowerCase();
    },
    //日期转为时间戳
    dataToLong: function(str) {
      if (str != '' && str != '无') {
        str = str.replace(/-/g, '/'); // 将-替换成/
        var date = new Date(str); // 构造一个日期型数据，值为传入的字符串
        var time = date.getTime();
        return time;
      }
    },
    getParam: function(name) { //获取浏览器url的参数
      var reg = new RegExp("(^|&)" + name + "=([^&]*)(&|$)", "i");
      var r = window.location.search.substr(1).match(reg);
      if (r != null)
        return unescape(r[2]);
      return null;
    },

    //新添加 yub
    // 根据url查询list
    list: function(url) {
      return $.ajax({
        url: "http://" + window.location.host + "/sichuang-wangyueche/" + url,
        dataType: "json",
        type: "get",
        async: true
      });
    },
    // 添加
    add: function(requestModel, url) {
      return $.ajax({
        url: "http://" + window.location.host + "/sichuang-wangyueche/" + url,
        dataType: "json",
        type: "post",
        data: requestModel,
        async: false
      });
    },
    //详情 requestModel为id
    view: function(requestModel, url) {
      return $.ajax({
        url: "http://" + window.location.host + "/sichuang-wangyueche/" + url + requestModel,
        dataType: "json",
        type: "get",
        async: false
      });
    },
    //修改
    update: function(requestModel, url, subdata) {
      return $.ajax({
        url: "http://" + window.location.host + "/sichuang-wangyueche/" + url + requestModel,
        dataType: "json",
        data: subdata,
        type: "post",
        async: false
      });
    },
    //单项删除
    delete: function(requestModel, url) {
      return $.ajax({
        url: "http://" + window.location.host + "/sichuang-wangyueche/" + url + requestModel,
        dataType: "json",
        type: "get",
        async: false
      });
    },
    //批量删除
    deleteByIds: function(requestModel, url) {
      return $.ajax({
        url: "http://" + window.location.host + "/sichuang-wangyueche/" + url,
        dataType: "json",
        type: "post",
        data: requestModel,
        async: false
      });
    },
    //checkbox的全选全不选
    allCheckbox: function(subBox, allCheckbox) {
      $(subBox).prop("checked", $(allCheckbox).prop("checked"));
    },
    subBox: function(subBox, allCheckbox) {
      if ($(subBox).length == $("subBox:checked")) {
        $(allCheckbox).prop("checked", true);
      }
      if ($(subBox).length != $("subBox:checked")) {
        $(allCheckbox).prop("checked", false);
      }
    },
    //设备信息填充数据
    matchData: function(attr, json) { //attr: id or class   json:  数据
      var aEle = $('#' + attr + ' [data-name],.' + attr + ' [data-name]');
      $.each(aEle, function() {
        var name = $(this).attr('data-name');
        var data = json[name] || '';
        $(this).val(data);
      })
    }
  }
  lib.base = base;
})(cLib)

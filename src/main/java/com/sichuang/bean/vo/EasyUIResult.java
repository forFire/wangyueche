package com.sichuang.bean.vo;

import java.io.Serializable;
import java.util.List;

/**
 * Created by gaoshiwei on 2017/4/12.
 * EasyUI返回结果包装类
 */
public class EasyUIResult implements Serializable{

    private static final long serialVersionUID = 1L;

    private long total;
    private List<?> rows;

    public long getTotal() {
        return total;
    }

    public void setTotal(long total) {
        this.total = total;
    }

    public List<?> getRows() {
        return rows;
    }

    public void setRows(List<?> rows) {
        this.rows = rows;
    }
}

package com.sichuang.service.impl.dao;

import com.sichuang.bean.entity.Fence;
import com.sichuang.bean.vo.FenceVo;

import java.util.List;

/**
 * Created by zhangfei on 2017/4/25.
 */
public interface FenceDao {

    List<Fence> listForPage(int pageCurrent, int pageSize,Fence fence);

    List<FenceVo> listAll();

    Fence findById(int id);

    int save(Fence fence);

    int update(Fence fence);

    int changeStatus(Integer id,Integer status);

}

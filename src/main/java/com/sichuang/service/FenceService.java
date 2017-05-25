package com.sichuang.service;

import com.sichuang.bean.entity.Fence;
import com.sichuang.bean.vo.EasyUIResult;
import com.sichuang.bean.vo.FenceVo;

import java.util.List;

/**
 * Created by zhangfei on 2017/4/25.
 */
public interface FenceService {

    EasyUIResult listForPage(int page, int rows,  Fence fence);

    List<FenceVo> listAll();

    Fence findById(int id);

    int save(Fence fence);

    int update(Fence fence);

    int changeStatus(Integer id,Integer status);

}

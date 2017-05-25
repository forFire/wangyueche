package com.sichuang.service;

import java.util.List;

import com.sichuang.bean.entity.VehiclePosition;
import com.sichuang.bean.vo.VehiclepositionJMS;

/**
 * 轨迹过滤
 * @author XieHaiSheng
 *
 */
public interface OrbitFilter {
	
	boolean valid(List<VehiclepositionJMS> orbit);
	
	Integer getOrder();
	
	
}

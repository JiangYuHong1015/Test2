package com.bdqn.service.hotelOrder;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.Hotelorder;

public interface HotelOrderService {
	/**
	 * 根据userId查询订单信息
	 * @param userId
	 * @param hotelname
	 * @param orderstatus
	 * @param currentPageNo
	 * @param pageSize
	 * @return
	 * @throws Exception
	 */
	List<Hotelorder> getHotelOrderByUserId(Integer userId,String hotelname,String orderstatus,Integer currentPageNo,Integer pageSize)throws Exception;
										   
	
	/**
	 * 根据userId获取订单总数量
	 * @param userId
	 * @param hotelname
	 * @param orderstatus
	 * @return
	 * @throws Exception
	 */
	int getHotelOrderCount(Integer userId,String hotelname,String orderstatus)throws Exception;								   

}

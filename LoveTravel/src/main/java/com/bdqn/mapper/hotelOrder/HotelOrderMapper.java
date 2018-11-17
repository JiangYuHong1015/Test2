package com.bdqn.mapper.hotelOrder;

import com.bdqn.pojo.Contact;
import com.bdqn.pojo.Hotelorder;
import com.bdqn.pojo.User;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface HotelOrderMapper {



	//根据userId获取订单信息
	List<Hotelorder> getHotelOrderByUserId(@Param(value="userId") Integer userId,@Param(value="hotelname")String hotelname,
										   @Param(value="orderstatus")String orderstatus, @Param(value="from")Integer currentPageNo,
										   @Param(value="pageSize")Integer pageSize)throws Exception;
	
	//根据userId获取订单总数量
	int getHotelOrderCount(@Param(value="userId") Integer userId,@Param(value="hotelname")String hotelname,
			   			   @Param(value="orderstatus")String orderstatus)throws Exception;
}
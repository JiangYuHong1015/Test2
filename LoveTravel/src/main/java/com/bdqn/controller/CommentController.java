package com.bdqn.controller;

import java.util.Date;

import javax.annotation.Resource;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;

import com.bdqn.pojo.Comments;
import com.bdqn.service.comments.CommentsService;

@Controller
@RequestMapping(value="/user")
public class CommentController extends BaseController {
	
	private Logger logger = Logger.getLogger(BaseController.class);
	
	@Resource
	private CommentsService commentsService;
	
	
	//跳转到添加评论页面
			@RequestMapping(value="/commentAdd/{id}/{orderNo}/{hotelName}",method=RequestMethod.GET)
			public String commentAdd(@PathVariable String id,
					@PathVariable String orderNo,@PathVariable String hotelName ){
				logger.debug("commentAdd==========");
				
				//根据订单的id,得到订单对应的信息
				Comments record = new Comments();
				record.setId(1);
				record.setHotelid(Integer.parseInt(id));
				record.setOrderno(orderNo);
				record.setHotelname(hotelName);
				record.setCleanscore(1);
				record.setCommentinfo("111");
				record.setCreateby(1);
				record.setCreatedate(new Date());
				record.setEnvscore(1);
				record.setLocationscore(1);
				record.setModifyby(1);
				record.setModifydate(new Date());
				record.setOrderno("11111");
				record.setServicescore(1);
				record.setTotalscore(13);
				//换种方法，或者设置id
				boolean flag = commentsService.insertSelective(record);
				if(flag){
					return"403";
					
				}
				
				return "user/commentAdd";
				
			}
	

}

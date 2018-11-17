package com.bdqn.service.comments;

import com.bdqn.pojo.Comments;

public interface CommentsService {
	
	//增加评论
	boolean insertSelective(Comments record);

}

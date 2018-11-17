package com.bdqn.service.comments;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.mapper.comments.CommentsMapper;
import com.bdqn.pojo.Comments;

@Service
public class CommentsServiceImpl implements CommentsService {
	
	@Resource
	private CommentsMapper commentMapper;

	@Override
	public boolean insertSelective(Comments record) {
		boolean flag = false;
		if(commentMapper.insertSelective(record) > 0){
			flag = true;
		}
		
		return flag;
	}

}

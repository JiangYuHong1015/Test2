package com.bdqn.service.user;


import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.mapper.user.UserMapper;
import com.bdqn.pojo.User;


@Service
public class UserServiceImpl implements UserService {
	
	@Resource
	private UserMapper userMapper;

	
	public User userExist(String param) throws Exception {
		
		User user = null;
		
		User userByEmail = userMapper.getUserByEmail(param);
		User userByPhone = userMapper.getUserByPhone(param);
		//判断是否有找到对应的user
		if(null != userByEmail){
			user = userByEmail;
		}else if(null != userByPhone){
			user = userByPhone;
		}
		return user;
	}

	

	public User doLogin(String param, String password) throws Exception {
		
		//判断是否有找到对应的user
		User user = this.userExist(param);
		//找到对应的user对象后进行密码匹配
		if(null != user){
			if(!user.getUserpassword().equals(password)){
				user = null;
			}
		}
		
		return user;
	}



	public User getUserRoleName(int id) throws Exception {
		
		User user = userMapper.getUserRoleName(id);
		
		return user;
	}



	@Override
	public boolean updateUserById(User user) throws Exception {
		
		boolean flag = false;
		if(userMapper.updateUserById(user) > 0){
			flag = true;
		}
		
		return flag;
	}



	@Override
	public boolean updatePhoto(User user) throws Exception {
		
		boolean flag = false;
		if(userMapper.updatePhoto(user) > 0){
			flag = true;
		}
		
		return flag;
	}





	



}

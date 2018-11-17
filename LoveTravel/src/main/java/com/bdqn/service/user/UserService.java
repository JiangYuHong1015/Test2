package com.bdqn.service.user;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.User;

public interface UserService {
	

	
	/**
	 * 判断用户是否存在
	 * @param param 邮箱或者手机号
	 * @return
	 * @throws Exception
	 */
	User userExist(String param)throws Exception;
	
	/**
	 * 登录方法
	 * @param param登录名
	 * @param password密码
	 * @return
	 * @throws Exception
	 */
	User doLogin(String param,String password) throws Exception;
	
	/**
	 * 查找角色名称
	 * @param id
	 * @return
	 * @throws Exception
	 */
	User getUserRoleName(int id)throws Exception;
	/**
	 * 根据id修改user
	 * @param user
	 * @return
	 * @throws Exception
	 */
	boolean updateUserById(User user)throws Exception;
	
	
	/**
	 * 根据id上传头像
	 * @param user
	 * @return
	 * @throws Exception
	 */
	boolean updatePhoto(User user)throws Exception;

}

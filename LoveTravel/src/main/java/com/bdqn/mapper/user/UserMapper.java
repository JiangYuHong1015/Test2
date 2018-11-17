package com.bdqn.mapper.user;

import com.bdqn.pojo.User;
import java.util.List;
import org.apache.ibatis.annotations.Param;

public interface UserMapper {

	//根据手机号查找user
	User getUserByPhone(@Param(value="phone")String phone) throws Exception;
	//根据邮箱查找user
	User getUserByEmail(@Param(value="email")String email) throws Exception;
	//根据id查找角色名称
	User getUserRoleName(@Param(value="id")int id)throws Exception;
	//根据id修改user
	int updateUserById(User user)throws Exception;
	//根据id上传头像
	int updatePhoto(User user)throws Exception;
	

}
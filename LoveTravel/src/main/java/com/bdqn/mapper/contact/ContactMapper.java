package com.bdqn.mapper.contact;

import com.bdqn.pojo.Contact;
import com.bdqn.pojo.User;

import java.util.List;

import org.apache.ibatis.annotations.Param;

public interface ContactMapper {

	//增加联系人
	int addContact(Contact contact) throws Exception;
	
	//获取所有联系人信息
	List<Contact> getContactList(@Param(value="contactName")String contactName,@Param(value="phone") String phone,
								 @Param(value="createBy")Integer createBy,
								 @Param(value="from")Integer currentPageNo,
								 @Param(value="pageSize")Integer pageSize) throws Exception;
	
	//获取联系人总数量
	int getContactCount(@Param(value="contactName")String contactName,@Param(value="phone") String phone,
			 					  @Param(value="createBy")Integer createBy) throws Exception;

	//根据id获取联系人信息
	Contact getContactById(@Param(value="id") Integer id)throws Exception;
	
	//根据id修改联系人信息
	int updateContactById(Contact contact) throws Exception;
	
	//根据id删除联系人
	int deleteContactById(@Param(value="id")Integer id) throws Exception;
}
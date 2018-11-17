package com.bdqn.service.contact;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.bdqn.pojo.Contact;

public interface ContactService {
	
	/**
	 * 增加联系人
	 * @param contact
	 * @return
	 * @throws Exception
	 */
	boolean addContact(Contact contact) throws Exception;
	
	/**
	 * 获取联系人信息
	 * @return
	 * @throws Exception
	 */
	List<Contact> getContactList(String contactName,String phone,Integer createBy,Integer pageSize,Integer currentPageNo) throws Exception;

	/**
	 * 获取联系人总数量
	 * @param contactName
	 * @param phone
	 * @param createBy
	 * @return
	 * @throws Exception
	 */
	int getContactCount(String contactName,String phone,Integer createBy)throws Exception;
	
	/**
	 * 根据id查找联系人
	 * @param id
	 * @return
	 * @throws Exception
	 */
	Contact getContactById(@Param(value="id") Integer id)throws Exception;
	
	/**
	 * 根据id修改联系人信息
	 * @param contact
	 * @return
	 * @throws Exception
	 */
	boolean updateContactById(Contact contact) throws Exception;
	
	
	/**
	 * 根据id删除联系人
	 * @param id
	 * @return
	 * @throws Exception
	 */
	String deleteContactById(@Param(value="id")Integer id) throws Exception;
}

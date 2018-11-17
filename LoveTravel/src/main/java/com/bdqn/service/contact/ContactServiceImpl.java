package com.bdqn.service.contact;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.bdqn.mapper.contact.ContactMapper;
import com.bdqn.pojo.Contact;

@Service
public class ContactServiceImpl implements ContactService {
	
	@Resource
	private ContactMapper contactMapper;
	

	public boolean addContact(Contact contact) throws Exception {
		
		boolean flag = false;
		if(contactMapper.addContact(contact) > 0){
			flag = true;
		}
		return flag;
	}


	@Override
	public List<Contact> getContactList(String contactName, String phone,Integer createBy,
			Integer pageSize, Integer currentPageNo) throws Exception {
		//limit的第一个参数的设置(currentPageNo-1)*pageSize
		List<Contact> contactList = contactMapper.getContactList(contactName, phone, createBy,(currentPageNo-1)*pageSize, pageSize);
		return contactList;
	}


	@Override
	public int getContactCount(String contactName, String phone,
			Integer createBy) throws Exception {
		
		int count = contactMapper.getContactCount(contactName, phone, createBy);
		return count;
	}


	@Override
	public Contact getContactById(Integer id) throws Exception {
		
		Contact contact = contactMapper.getContactById(id);
		return contact;
	}


	@Override
	public boolean updateContactById(Contact contact) throws Exception {
		
		boolean flag = false;
		if(contactMapper.updateContactById(contact) > 0){
			flag = true;
			
		}
		return flag;
	}


	@Override
	public String deleteContactById(Integer id) throws Exception {
		String flag = "false";
		if(contactMapper.deleteContactById(id)> 0){
			flag = "true";
			
		}else if (contactMapper.deleteContactById(id) == 0){
			flag = "notexist";
		}
		return flag;
	}

}

package com.bdqn.controller;

import java.lang.ProcessBuilder.Redirect;
import java.util.Date;
import java.util.HashMap;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpSession;

import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.alibaba.fastjson.JSONArray;
import com.bdqn.pojo.Contact;
import com.bdqn.pojo.User;
import com.bdqn.service.contact.ContactService;
import com.bdqn.service.user.UserService;
import com.bdqn.tools.Constants;
import com.bdqn.tools.PageSupport;

@Controller
@RequestMapping(value="/user")
public class ContactController extends BaseController {
	

	private Logger logger = Logger.getLogger(UserController.class);
	
	@Resource
	private UserService userService;
	@Resource
	private ContactService contactService;
	
	//进入增加联系人页面
	@RequestMapping(value="/addContact",method = RequestMethod.GET)
	public String addcontact(@ModelAttribute("contact")Contact contact){
		logger.debug("contact=============");
		return "user/contactAdd";
		
	}
	
	//保存新增联系人
	@RequestMapping(value="/contactAddSave",method = RequestMethod.POST)
	public String addContactSave(Contact contact,HttpSession session,
			@RequestParam String cardType,@RequestParam String cardNo){
		
		logger.debug("addContactSave=============");
		//从session中获取user对象
		User user = (User)session.getAttribute(Constants.USER_SESSION);
		contact.setCreateBy(user.getId());
		contact.setCreateDate(new Date());
		
		//设置证件号码
		int type = Integer.parseInt(cardType);
		if(type == 1){
			contact.setIdCard(cardNo);
		}else{
			contact.setPassport(cardNo);
		}
		//判断增加是否成功
		boolean flag = false;
		try {
			flag = contactService.addContact(contact);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//增加成功
		if(flag){
			return"redirect:/user/contactList";
		}
		return "user/contactAdd";
		
	}
	
	
	//进入联系人列表界面.查看所有的联系人信息
	@RequestMapping(value="/contactList")
	public String contactList(Model model,HttpSession session,
			@RequestParam(value="queryName",required=false) String queryName,
			@RequestParam(value="queryPhone",required=false) String queryPhone,
			@RequestParam(value="pageIndex",required=false)String pageIndex ){
		
		logger.debug("contactList=============");
		logger.debug("queryName=============");
		logger.debug("queryPhone=============");
		
		User user = (User)session.getAttribute(Constants.USER_SESSION);
		int createBy = user.getId();
		
		//获得总页数
		int totalCount = 0;
		try {
			totalCount = contactService.getContactCount(queryName, queryPhone, createBy);
		} catch (Exception e1) {
			e1.printStackTrace();
		}
		//页面容量
		int pageSize = Constants.pageSize;
		
		//当前页码
		int currentPageNo = 1;
		
		if(null != pageIndex){
			currentPageNo = Integer.parseInt(pageIndex);
		}
		//设置分页参数
		PageSupport pages = new PageSupport();
		pages.setCurrentPageNo(currentPageNo);
		pages.setPageSize(pageSize);
		pages.setTotalCount(totalCount);
		int totalPageCount = pages.getTotalPageCount();
		
		//控制首页和尾页
		if(currentPageNo < 1){
			currentPageNo = 1;
		}else if(currentPageNo > totalPageCount){
			currentPageNo = totalPageCount;
		}
		
		//获取联系人列表
		List<Contact> contactList = null;
		try {
			contactList = contactService.getContactList(queryName, queryPhone, createBy, pageSize, currentPageNo);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		model.addAttribute("contactList", contactList);
		model.addAttribute("pages", pages);
		model.addAttribute("queryName", queryName);
		model.addAttribute("queryPhone", queryPhone);
	
		
		return "user/contactList";
		
	}
	
	
/*	
	@RequestMapping(value="/contactView")
	@ResponseBody
	public Contact contactView(@RequestParam(value="id")String id){
		logger.debug("contactView=============");
		Contact contact = null ;
		
			try {
			
			   contact = contactService.getContactById(Integer.parseInt(id));
				
			} catch (NumberFormatException e) {
				e.printStackTrace();
			} catch (Exception e) {
				e.printStackTrace();
			}
		
		return contact;
		
	}
	*/
	
	//跳转到修改联系人信息页面
	@RequestMapping(value="/contactmodify",method=RequestMethod.GET)
	public String contactModify(Model model,@RequestParam(value="id") String contactID){
		logger.debug("contactModify=============");
		Contact contact = null ;
		try {
			
		   contact = contactService.getContactById(Integer.parseInt(contactID));
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		model.addAttribute("contact", contact);
		
		return "user/contactModify";
		
	}
	
	
	
	@RequestMapping(value="/contactmodifysave",method = RequestMethod.POST)
	public String contactmodifysave(Contact contact,HttpSession session){
		User user = (User)session.getAttribute(Constants.USER_SESSION);
		contact.setModifyBy(user.getId());
		contact.setModifyDate(new Date());
		boolean flag = false;
		try {
			flag = contactService.updateContactById(contact);
		} catch (Exception e) {
			e.printStackTrace();
		}
		//修改成功，返回列表页
		if(flag){
			return"redirect:/user/contactList";
		}
		
		return "user/contactModify";
		
	}
	
	
	//删除指定联系人
	@RequestMapping(value="/deleteConact")
	@ResponseBody
	public String deleteConact(@RequestParam(value="id")String id){
		HashMap<String, String> resultMap = new HashMap<String, String>();
		String flag = "false";
		try {
			flag = contactService.deleteContactById(Integer.parseInt(id));
			
		} catch (NumberFormatException e) {
			e.printStackTrace();
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		resultMap.put("result", flag);
		
		return JSONArray.toJSONString(resultMap);
		
	}
	

	
	

	
	
	

}

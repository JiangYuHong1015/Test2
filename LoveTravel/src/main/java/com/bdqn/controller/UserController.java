package com.bdqn.controller;

import java.io.File;
import java.io.IOException;
import java.lang.ProcessBuilder.Redirect;
import java.util.Date;
import java.util.HashMap;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.io.FilenameUtils;
import org.apache.log4j.Logger;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;






import org.springframework.web.multipart.MultipartFile;

import com.alibaba.fastjson.JSON;
import com.alibaba.fastjson.JSONArray;
import com.bdqn.pojo.User;
import com.bdqn.service.user.UserService;
import com.bdqn.tools.Constants;
import com.mysql.jdbc.StringUtils;

@Controller
public class UserController {
	
	private Logger logger = Logger.getLogger(UserController.class);
	
	@Resource
	private UserService userService;
	
	

	//进入到首页
	@RequestMapping(value="/")
	public String index(){
		return "index";
		
	}
	
	//进入到注册页面
	@RequestMapping(value="register.html")
	public String register(){
		
		return"register";
	}
	
	//进入到登录页面
	@RequestMapping(value="login.html")
	public String login(){
		
		logger.debug("login================");
	
		return "login";
		
	}
	
	/**
	 * 使用ajax判断用户名是否存在
	 * @param username
	 * @return
	 */
	@RequestMapping(value="/userNameExist")
	@ResponseBody
	public String checkUserName(@RequestParam String username){
		
		logger.debug("checkUserName================");
		
		HashMap<String, String> resultMap = new HashMap<String,String>();
		
		if(StringUtils.isNullOrEmpty(username)){
			resultMap.put("result", "empty");
		}else{
			User user = null;
			
			try {
				//调用方法从数据库查找user
				user = userService.userExist(username);
			} catch (Exception e) {
				e.printStackTrace();
			}
			
			if(null != user){
				resultMap.put("result", "exist");
			}else{
				resultMap.put("result", "noexist");
			}
		}
		return JSONArray.toJSONString(resultMap);
	}

	
	/**
	 * 退出登录
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/doLogut")
	public String doLogut(HttpSession session){
		logger.debug("doLogut================");
		session.removeAttribute(Constants.USER_SESSION);
		return "index";
		
	}
	
	/**
	 * 用户登录的方法
	 * @param param
	 * @param password
	 * @return
	 */
	@RequestMapping(value="/doLogin",method=RequestMethod.POST)
	public String doLogin(@RequestParam String param,@RequestParam String password,HttpSession session,HttpServletRequest request){
		
		logger.debug("doLogin================");
		
		
		try {
			User user = userService.doLogin(param, password);
			if(null != user){
				//将user放入session
				session.setAttribute(Constants.USER_SESSION, user);
				
				//重定向到首页
				return"index";
			}
		} catch (Exception e) {
			e.printStackTrace();
			return"403";
		}
		request.setAttribute("error", "密码输入错误");
		return "login";
	}
	
	
	//跳转到个人中心页面
	@RequestMapping(value="/user/userView")
	public String userMain(HttpSession session){
		logger.debug("userMain================");
		User user = (User)session.getAttribute(Constants.USER_SESSION);
		
		if(null == user){
			return "error";
		}
		try {
			 user = userService.getUserRoleName(user.getId());
			 session.setAttribute(Constants.USER_SESSION, user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		return "user/userView";
		
	}
	
	
	/**
	 * 跳转到修改user页面
	 * @return
	 */
	@RequestMapping(value="/user/userModify")
	public String userModify(){
		return "user/userModify";
		
	}
	
	/**
	 * 保存修改的user
	 * @param user
	 * @param session
	 * @return
	 */
	@RequestMapping(value="/user/userModifySave")
	public String userModifySave(User user,HttpSession session){
		logger.debug("userModifySave================");
		
		User users = (User)session.getAttribute(Constants.USER_SESSION);
		user.setModifyby(users.getId());
		user.setModifydate(new Date());
	
		boolean flag = false;
		try {
			flag = userService.updateUserById(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		if(flag){
			return"redirect:/user/userView";
		}
		
		return "user/userModify";
		
	}
	
	/**
	 * 跳转到上传头像页面
	 * @return
	 */
	@RequestMapping(value="/user/uploadPhoto")
	public String uploadPhoto(){
		logger.debug("uploadPhoto================");
		
		return "user/uesrUploadPhoto";
		
	}
	
	/**
	 * 保存上传的图片
	 * @param user
	 * @param session
	 * @param request
	 * @param attach
	 * @return
	 */
	@RequestMapping(value="/user/uploadPhotoSave")
	public String uploadPhotoSave(User user,HttpSession session,HttpServletRequest request,
			@RequestParam(value="photo",required=false)MultipartFile attach){
	
		logger.debug("uploadPhotoSave================");
		
		User users = (User)session.getAttribute(Constants.USER_SESSION);
		
		//图片上传的相对路径
		String photoPath = null;
		//图片上传的绝对路径
		String photoRealPath = null ;
		//获得源文件名
		String oldPhotoName = null;
		//上传图片的名称
		String fileName = null;
		if(!attach.isEmpty()){
			//获得绝对路径
			String path = request.getSession().getServletContext().getRealPath("statics"+java.io.File.separator+"uploadfiles");
			
			oldPhotoName = attach.getOriginalFilename();
			//获得源文件后缀
			String suffix = FilenameUtils.getExtension(oldPhotoName);
			int fileSize = 300000;
			//上传文件超过规定大小
			if(attach.getSize() > fileSize){
				request.setAttribute("uploadError", Constants.FILEUPLOAD_ERROR_3);
				return "user/uesrUploadPhoto";
			}else if (suffix.equalsIgnoreCase("PNG") || suffix.equalsIgnoreCase("GIF") || suffix.equalsIgnoreCase("JPG")){
				//上传图片的名称
			    fileName = users.getPhone()+users.getUsername()+".jpg";
				
				File targetFile = new File(path,fileName);
				if(!targetFile.exists()){
					 targetFile.mkdirs();
				 }
				//上传文件
				try {
					attach.transferTo(targetFile);
				} catch (Exception e) {
					e.printStackTrace();
					request.setAttribute("uploadError", Constants.FILEUPLOAD_ERROR_1);
					return "user/uesrUploadPhoto";
				}
				photoPath = request.getContextPath()+"/statics/uploadfiles/"+fileName;
				photoRealPath =path+File.separator+fileName;
				
			}else{
				request.setAttribute("fileUploadError", Constants.FILEUPLOAD_ERROR_2);
				return "developer/appinfoadd";
			}
			
		}
	
		user.setId(users.getId());
		user.setPhotoName(fileName);
		user.setPhotoOldName(oldPhotoName);
		user.setPhotoPath(photoPath);
		user.setPhotoRealPath(photoRealPath);
		user.setModifyby(users.getId());
		user.setModifydate(new Date());
		
		boolean flag = false;
		try {
			flag = userService.updatePhoto(user);
		} catch (Exception e) {
			e.printStackTrace();
		}
		
		if(flag){
			return"redirect:/user/uploadPhoto";
		}
		
		return "user/uesrUploadPhoto";
		
	}

	
	
	
	
	
	
	
}

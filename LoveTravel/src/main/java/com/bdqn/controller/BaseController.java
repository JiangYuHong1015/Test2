package com.bdqn.controller;

import java.sql.Date;
import java.text.SimpleDateFormat;

import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;

/**
 * 使用InitBinder解决SpringMVC日期类型无法绑定的问题
 * 
 * @author ASUS
 *
 */
public class BaseController {

	@InitBinder
	public void initBinder(WebDataBinder dataBinder) {

		dataBinder.registerCustomEditor(Date.class, 
				new CustomDateEditor(new SimpleDateFormat("yyyy-MM-dd"), true));

	}

}

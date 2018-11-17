package com.bdqn.pojo;

import java.util.Date;

public class Hotelorder {
	private Integer id;

	private String orderno;

	private String resname;

	private String hotelname;

	private String hotelinfo;

	private String hotelpic;

	private String checkInDate;

	private String checkOutDate;

	private Integer totaldays;

	private Integer orderprice;

	private Integer orderstatus;

	private String hoteladdress;

	private Integer createby;

	private Date createdate;

	private Integer modifyby;

	private Date modifydate;

	private Integer userId;

	private int hotelId;

	private String orderStatusName;
	
	private String payStatusName;
	
	private String commentStatusName;
	
	private int payStatus;

	private int commentStatus;

	public String getOrderStatusName() {
		return orderStatusName;
	}

	public void setOrderStatusName(String orderStatusName) {
		this.orderStatusName = orderStatusName;
	}

	public String getPayStatusName() {
		return payStatusName;
	}

	public void setPayStatusName(String payStatusName) {
		this.payStatusName = payStatusName;
	}

	public String getCommentStatusName() {
		return commentStatusName;
	}

	public void setCommentStatusName(String commentStatusName) {
		this.commentStatusName = commentStatusName;
	}

	public int getPayStatus() {
		return payStatus;
	}

	public void setPayStatus(int payStatus) {
		this.payStatus = payStatus;
	}

	public int getCommentStatus() {
		return commentStatus;
	}

	public void setCommentStatus(int commentStatus) {
		this.commentStatus = commentStatus;
	}

	public int getHotelId() {
		return hotelId;
	}

	public void setHotelId(int hotelId) {
		this.hotelId = hotelId;
	}

	public Integer getUserId() {
		return userId;
	}

	public void setUserId(Integer userId) {
		this.userId = userId;
	}

	public Integer getId() {
		return id;
	}

	public void setId(Integer id) {
		this.id = id;
	}

	public String getOrderno() {
		return orderno;
	}

	public void setOrderno(String orderno) {
		this.orderno = orderno == null ? null : orderno.trim();
	}

	public String getResname() {
		return resname;
	}

	public void setResname(String resname) {
		this.resname = resname == null ? null : resname.trim();
	}

	public String getHotelname() {
		return hotelname;
	}

	public void setHotelname(String hotelname) {
		this.hotelname = hotelname == null ? null : hotelname.trim();
	}

	public String getHotelinfo() {
		return hotelinfo;
	}

	public void setHotelinfo(String hotelinfo) {
		this.hotelinfo = hotelinfo == null ? null : hotelinfo.trim();
	}

	public String getHotelpic() {
		return hotelpic;
	}

	public void setHotelpic(String hotelpic) {
		this.hotelpic = hotelpic == null ? null : hotelpic.trim();
	}

	public String getCheckInDate() {
		return checkInDate;
	}

	public void setCheckInDate(String checkInDate) {
		this.checkInDate = checkInDate == null ? null : checkInDate.trim();
	}

	public String getCheckOutDate() {
		return checkOutDate;
	}

	public void setCheckOutDate(String checkOutDate) {
		this.checkOutDate = checkOutDate == null ? null : checkOutDate.trim();
	}

	public Integer getTotaldays() {
		return totaldays;
	}

	public void setTotaldays(Integer totaldays) {
		this.totaldays = totaldays;
	}

	public Integer getOrderprice() {
		return orderprice;
	}

	public void setOrderprice(Integer orderprice) {
		this.orderprice = orderprice;
	}

	public Integer getOrderstatus() {
		return orderstatus;
	}

	public void setOrderstatus(Integer orderstatus) {
		this.orderstatus = orderstatus;
	}

	public String getHoteladdress() {
		return hoteladdress;
	}

	public void setHoteladdress(String hoteladdress) {
		this.hoteladdress = hoteladdress == null ? null : hoteladdress.trim();
	}

	public Integer getCreateby() {
		return createby;
	}

	public void setCreateby(Integer createby) {
		this.createby = createby;
	}

	public Date getCreatedate() {
		return createdate;
	}

	public void setCreatedate(Date createdate) {
		this.createdate = createdate;
	}

	public Integer getModifyby() {
		return modifyby;
	}

	public void setModifyby(Integer modifyby) {
		this.modifyby = modifyby;
	}

	public Date getModifydate() {
		return modifydate;
	}

	public void setModifydate(Date modifydate) {
		this.modifydate = modifydate;
	}

}
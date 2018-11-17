package com.bdqn.pojo;

import java.util.Date;

public class User {
    private Integer id;

    private String username;

    private String userpassword;

    private String phone;

    private String email;

    private Integer roleID;

    private Integer createby;

    private Date createdate;

    private Integer modifyby;

    private Date modifydate;
    
    private String rolename;

	private String photoName;
	
    private String photoRealPath;
    
    private String photoOldName;

    private String temp3;
    
	private String photoPath;

    public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getPhotoPath() {
		return photoPath;
	}

	public void setPhotoPath(String photoPath) {
		this.photoPath = photoPath;
	}

	public String getPhotoName() {
		return photoName;
	}

	public void setPhotoName(String photoName) {
		this.photoName = photoName;
	}

	public String getPhotoRealPath() {
		return photoRealPath;
	}

	public void setPhotoRealPath(String photoRealPath) {
		this.photoRealPath = photoRealPath;
	}

	public String getPhotoOldName() {
		return photoOldName;
	}

	public void setPhotoOldName(String photoOldName) {
		this.photoOldName = photoOldName;
	}

	public String getTemp3() {
		return temp3;
	}

	public void setTemp3(String temp3) {
		this.temp3 = temp3;
	}


    
    
    public String getRolename() {
  		return rolename;
  	}

  	public void setRolename(String rolename) {
  		this.rolename = rolename;
  	}

    public Integer getId() {
        return id;
    }

    public void setId(Integer id) {
        this.id = id;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username == null ? null : username.trim();
    }

    public String getUserpassword() {
        return userpassword;
    }

    public void setUserpassword(String userpassword) {
        this.userpassword = userpassword == null ? null : userpassword.trim();
    }

  

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email == null ? null : email.trim();
    }

    public Integer getRoleID() {
        return roleID;
    }

    public void setRoleID(Integer roleID) {
        this.roleID = roleID;
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
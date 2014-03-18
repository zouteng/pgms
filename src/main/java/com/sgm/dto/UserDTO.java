package com.sgm.dto;

import java.util.Date;

import org.codehaus.jackson.map.annotate.JsonSerialize;

import com.sgm.util.JsonDateSerializer;

/**
 * 用户管理DTO
 */
public class UserDTO {

	private String userId;

	private String name;

	private String loginName;

	private String pwd;

	private String code;

	private String description;

	private String inputCode2;

	private String inputCode1;

	private String inputCode3;

	private Date createtime;

	private Integer state;

	private String oldPassword;

	private String roleId;

	private String roleText;

	public String getUserId() {
		return userId;
	}

	public void setUserId(String userId) {
		this.userId = userId;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getLoginName() {
		return loginName;
	}

	public void setLoginName(String loginName) {
		this.loginName = loginName;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getCode() {
		return code;
	}

	public void setCode(String code) {
		this.code = code;
	}

	public String getDescription() {
		return description;
	}

	public void setDescription(String description) {
		this.description = description;
	}

	public String getInputCode2() {
		return inputCode2;
	}

	public void setInputCode2(String inputCode2) {
		this.inputCode2 = inputCode2;
	}

	public String getInputCode1() {
		return inputCode1;
	}

	public void setInputCode1(String inputCode1) {
		this.inputCode1 = inputCode1;
	}

	public String getInputCode3() {
		return inputCode3;
	}

	public void setInputCode3(String inputCode3) {
		this.inputCode3 = inputCode3;
	}
	@JsonSerialize(using = JsonDateSerializer.class)
	public Date getCreatetime() {
		return createtime;
	}

	public void setCreatetime(Date createtime) {
		this.createtime = createtime;
	}

	public Integer getState() {
		return state;
	}

	public void setState(Integer state) {
		this.state = state;
	}

	public String getOldPassword() {
		return oldPassword;
	}

	public void setOldPassword(String oldPassword) {
		this.oldPassword = oldPassword;
	}

	public String getRoleId() {
		return roleId;
	}

	public void setRoleId(String roleId) {
		this.roleId = roleId;
	}

	public String getRoleText() {
		return roleText;
	}

	public void setRoleText(String roleText) {
		this.roleText = roleText;
	}

}

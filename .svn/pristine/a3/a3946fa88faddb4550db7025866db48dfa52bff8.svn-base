/**
 * name:UserService.java
 * version:1.0
 * Author:zot
 * date:2013/10/21
 */
package com.sgm.service;

import com.sgm.domain.TsUser;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.UserDTO;

public interface UserService extends BaseService<TsUser, String> {
	public abstract boolean checkUser(String username, String password);
	public abstract boolean checkAuth(String userId, String requestPath);
	public abstract TsUser queryUserByName(String name);
	public abstract EasyuiDataGridJson datagrid(EasyuiDataGrid dg, UserDTO user);
	public abstract void updateUser(UserDTO user);
}

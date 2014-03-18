/**
 * name:UserServiceImpl
 * version:1.0
 * Author:zot
 * Date:2013/10/21
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.HashSet;
import java.util.List;
import java.util.Set;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgm.dao.RoleDao;
import com.sgm.dao.UserDao;
import com.sgm.domain.TsActionPermission;
import com.sgm.domain.TsMenuPermission;
import com.sgm.domain.TsRole;
import com.sgm.domain.TsUser;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.UserDTO;
import com.sgm.service.UserService;
import com.sgm.util.DataFilter;
import com.sgm.util.Encrypt;

@Service(value = "userService")
public class UserServiceImpl extends BaseServiceImpl<TsUser, String> implements
		UserService {

	private UserDao userDao;
	private RoleDao roleDao;

	public UserDao getUserDao() {
		return userDao;
	}

	@Autowired
	public void setUserDao(UserDao userDao) {
		this.userDao = userDao;
		super.setBaseDao(userDao);
	}

	public RoleDao getRoleDao() {
		return roleDao;
	}

	@Autowired
	public void setRoleDao(RoleDao roleDao) {
		this.roleDao = roleDao;
	}

	// 登录时，判断用户是否存在
	@Override
	public boolean checkUser(String username, String password) {
		TsUser tu = this.queryUserByName(username);
		if (tu != null && tu.getPwd().equals(Encrypt.e(password))) {
			return true;
		} else {
			return false;
		}
	}

	@Override
	public TsUser queryUserByName(String name) {
		// TODO Auto-generated method stub
		return userDao.queryUserByName(name);
	}

	// 判断该用户是否有访问requestPath路径的权限
	@Override
	public boolean checkAuth(String userId, String requestPath) {
		// TODO Auto-generated method stub
		TsUser tu = userDao.get(userId);
		Set<TsRole> tsroles = tu.getTsRoles();

		for (TsRole trole : tsroles) {
			Set<TsMenuPermission> tmenus = trole.getTsMenuPermissions();
			Set<TsActionPermission> tactions = trole.getTsActionPermissions();
			Set<String> actionname = new HashSet<String>();

			for (TsMenuPermission tm : tmenus) {
				actionname.add(tm.getActionName());
			}
			for (TsActionPermission tap : tactions) {
				actionname.add(tap.getName());
			}
			if (!actionname.isEmpty() && actionname.contains(requestPath)) {
				return true;
			}
		}
		return false;
	}

	/**
	 * 用户管理datagrid列表
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, UserDTO user) {
		EasyuiDataGridJson j = new EasyuiDataGridJson();

		// 通过name查用户
		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("name", "String", user.getName()));
		List<TsUser> tsuserlist = userDao.listPage(dg.getPage(), dg.getRows(),
				dfList);

		// 通过角色roleId查询用户
		TsRole tr = null;
		List<TsUser> userlist2 = new ArrayList();
		String roleId = user.getRoleId();
		if (roleId != null && (roleId.trim().length() != 0)) {
			tr = roleDao.get(roleId);
			Set<TsUser> uset = tr.getTsUsers();
			userlist2.addAll(uset);
		}
		// userlist ,userlist2的交集
		if (tr != null) {
			tsuserlist.retainAll(userlist2);
		}

		// 获取总记录数
		int totalRows = userDao.countAll(TsUser.class, dfList);
		int total = (tr == null ? totalRows : userlist2.size());

		j.setTotal((long) total);
		// j.setRows(userlist);

		List<UserDTO> users = new ArrayList<UserDTO>();
		if (tsuserlist != null && tsuserlist.size() > 0) {// 转换模型
			for (TsUser tsuser : tsuserlist) {
				UserDTO u = new UserDTO();
				BeanUtils.copyProperties(tsuser, u);

				Set<TsRole> tsuserRoleSet = tsuser.getTsRoles();
				if (tsuserRoleSet != null && tsuserRoleSet.size() > 0) {
					boolean b = false;
					String roleIds = "";
					String roleText = "";
					for (TsRole syuserSyrole : tsuserRoleSet) {
						if (!b) {
							b = true;
						} else {
							roleIds += ",";
							roleText += ",";
						}
						roleIds += syuserSyrole.getRoleId();
						roleText += syuserSyrole.getName();
					}
					u.setRoleId(roleIds);
					u.setRoleText(roleText);
				}

				users.add(u);
			}
		}

		j.setRows(users);// 设置返回的行

		return j;
	}

	/**
	 * 修改用户信息
	 */
	@Override
	public void updateUser(UserDTO user) {
		TsUser tuser = userDao.get(user.getUserId());
		HashSet hs = new HashSet();
		String roleIds[] = user.getRoleId().split(",");
		for (String s : roleIds) {
			TsRole tr = roleDao.get(s);
			hs.add(tr);
		}
		tuser.setTsRoles(hs);
		
		if (user.getPwd() != null && !user.getPwd().trim().equals("")) {
			user.setPwd(Encrypt.e(user.getPwd()));
		}
		if (tuser.getCreatetime()== null) {
			user.setCreatetime(new Date());
		}else{
			user.setCreatetime(tuser.getCreatetime());
		}
		
		BeanUtils.copyProperties(user, tuser);
	//	System.out.println(tuser.getName());
		userDao.saveOrUpdate(tuser);
	}

}

/**
 * 文件名称：UserController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 用户管理控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.io.PrintWriter;
import java.util.Date;
import java.util.HashSet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TsRole;
import com.sgm.domain.TsUser;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.dto.UserDTO;
import com.sgm.service.RoleService;
import com.sgm.service.UserService;

@Controller
public class UserController extends BaseController {
	@Autowired
	UserService userService;
	@Autowired
	RoleService roleService;

	/**
	 * 用户登陆
	 * 
	 * @param session
	 * @param user
	 * @return
	 */
	@RequestMapping("/login")
	public String checklogin(HttpSession session, TsUser user) {
		if (userService.checkUser(user.getLoginName(), user.getPwd())) {// 这里不需要再验证,需判断角色拦截

			TsUser tsuser = userService.queryUserByName(user.getLoginName());
			session.setAttribute("user", tsuser);
			return "/index";
		} else {
			return "/login";
		}
	}

	/**
	 * 显示用户表格
	 * 
	 * @param dg
	 * @param user
	 * @return
	 */
	@RequestMapping("userManage/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, UserDTO user) {
		return userService.datagrid(dg, user);
	}

	/**
	 * 新增用户
	 * 
	 * @param rsuser
	 * @param roleId
	 * @return
	 */
	@RequestMapping("userManage/saveUser")
	@ResponseBody
	public Json addUser(TsUser rsuser, String roleId) {
		Json j = new Json();
		try {
			HashSet hs = new HashSet();
			String roleIds[] = roleId.split(",");
			for (String s : roleIds) {
				TsRole tr = roleService.get(TsRole.class, s);
				hs.add(tr);
			}
			rsuser.setTsRoles(hs);
			rsuser.setCreatetime(new Date());
			rsuser.setIsdelete(false);
			userService.save(rsuser);
			j.setSuccess(true);
			j.setMsg("添加成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("添加失败");
			e.printStackTrace();
		}

		return j;
	}


	/**
	 * 修改用户信息
	 * 
	 * @param user
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("userManage/updateUser")
	@ResponseBody
	public Json update(UserDTO user) throws Exception {
		Json j = new Json();
		try {
			userService.updateUser(user);
			j.setSuccess(true);
			j.setMsg("修改成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("修改失败");
			e.printStackTrace();
		}
		return j;
	}

	/**
	 * 删除用户
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("userManage/delUser")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			userService.delete(TsUser.class, id);
			j.setSuccess(true);
			j.setMsg("删除成功");

		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除失败");
		}
		return j;
	}

	/**
	 * 登陆时验证用户名，密码是否正确
	 * 
	 * @param request
	 * @param response
	 * @throws Exception
	 */
	@RequestMapping("login/verifyUser")
	public void verifyUser(HttpServletRequest request,
			HttpServletResponse response) throws Exception {
		response.setContentType("text/Xml;charset=utf-8");
		PrintWriter out = null;
		try {
			String name = request.getParameter("name").trim();
			String password = request.getParameter("password").trim();
			out = response.getWriter();
			if (userService.checkUser(name, password)) {
				out.println("1");
			} else {
				out.println("用户名或密码错误!");
			}
		} catch (Exception e) {
			e.printStackTrace();
			throw e;
		}
	}

}

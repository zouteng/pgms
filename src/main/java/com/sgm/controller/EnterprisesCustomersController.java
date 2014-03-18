/**
 * 文件名称：EnterprisesCustomersController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 企业客户控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TmEnterprisescustomers;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.EnterprisesCustomersService;

@Controller
public class EnterprisesCustomersController extends BaseController {

	@Autowired
	public EnterprisesCustomersService enterprisesCustomersService;

	/**
	 * 企业用户列表
	 * 
	 * @param dg
	 * @param tm
	 * @return
	 */
	@RequestMapping("enterprisesCustomers/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmEnterprisescustomers tm) {
		return enterprisesCustomersService.datagrid(dg, tm);
	}

	/**
	 * 企业代码combobox
	 * 
	 * @param enterprisesId
	 * @return
	 */
	@RequestMapping("enterprisesCustomers/combobox")
	@ResponseBody
	public List<TmEnterprisescustomers> enterpriseCodecombobox(
			String enterprisesId) {
		return enterprisesCustomersService.combobox(enterprisesId);
	}

	/**
	 * 添加企业用户信息
	 * 
	 * @param tmEnterprisescustomers
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("enterprisesCustomers/saveEnterprisesCustomer")
	@ResponseBody
	public Json add(TmEnterprisescustomers tm) {

		Json j = new Json();
		try {
			if (tm.getCreatetime() == null) {
				tm.setCreatetime(new Date());
			}
			tm.setIsdelete(false);
			enterprisesCustomersService.save(tm);
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
	 * 修改企业客户信息
	 * 
	 * @param tm
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("enterprisesCustomers/updateEnterprisesCustomer")
	@ResponseBody
	public Json update(TmEnterprisescustomers tm) throws Exception {
		Json j = new Json();
		try {
			System.out.println("修改的id" + tm.getEnterprisesId());
			enterprisesCustomersService.updateEnterprises(tm);
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
	 * 删除企业用户的方法
	 * 
	 * @param ids
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("enterprisesCustomers/delEnterprisesCustomer")
	@ResponseBody
	public Json del(String id) throws Exception {
		 System.out.println("删除的ids:"+id);
		Json j = new Json();

		try {
			
			/*  String[] id =ids.split(","); for (int i = 0; i < id.length; i++)
			  { System.out.println("数组id "+id[i]); enterprisesCustomersService
			  .delete(TmEnterprisescustomers.class, id[i]);
			  
			  }*/
			 
			enterprisesCustomersService
					.delete(TmEnterprisescustomers.class, id);
			j.setSuccess(true);
			j.setMsg("删除成功");

		} catch (Exception e) {
			e.printStackTrace();
			j.setSuccess(false);
			j.setMsg("删除失败");
		}
		return j;
	}

}

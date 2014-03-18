/**
 * 文件名称：PriceManageController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 价格管理控制器类
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
import com.sgm.domain.TmPricemanage;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.PriceManageService;

@Controller
public class PriceManageController {
	@Autowired
	PriceManageService priceManageService;

	// listAll
	@RequestMapping("priceManage/listall")
	@ResponseBody
	public List<TmPricemanage> getallprices() {
		return priceManageService.listAll();
	}

	/**
	 * 价格维护datagird
	 * 
	 * @param dg
	 * @param tmPrice
	 * @return
	 */
	@RequestMapping("priceManage/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmPricemanage tmPrice) {
		return priceManageService.datagrid(dg, tmPrice);
	}

	/**
	 * 增加新价格
	 * 
	 * @param tmPrice
	 * @return
	 */
	@RequestMapping("priceManage/savePrice")
	@ResponseBody
	public Json add(TmPricemanage tmPrice) {
		Json j = new Json();
		try {
			if (tmPrice.getCreatetime() == null) {
				tmPrice.setCreatetime(new Date());
			}
			tmPrice.setIsdelete(false);
			priceManageService.save(tmPrice);
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
	 * 修改价格信息
	 * 
	 * @param tmprice
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("priceManage/updatePrice")
	@ResponseBody
	public Json update(TmPricemanage tmprice) throws Exception {
		Json j = new Json();
		try {
			priceManageService.updatePrice(tmprice);
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
	 * 删除价格
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("priceManage/delProject")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			priceManageService.delete(TmPricemanage.class, id);
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

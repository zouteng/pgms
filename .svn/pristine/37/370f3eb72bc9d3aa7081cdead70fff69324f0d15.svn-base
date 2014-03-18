/**
 * 文件名称：TestSpecificationController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 试验规范控制器类
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
import com.sgm.domain.TmTestspecification;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.TestSpecificationService;

@Controller
public class TestSpecificationController {
	@Autowired
	TestSpecificationService testSpecificationService;

	/**
	 * 获得 所有的测试规范数据
	 * 
	 * @return
	 */
	@RequestMapping("testSpecification/listAll")
	@ResponseBody
	public List<TmTestspecification> getAll() {
		return testSpecificationService.listAll();
	}

	/**
	 * 试验规范datagrid显示
	 * 
	 * @param dg
	 * @param tmtest
	 * @return
	 */
	@RequestMapping("testSpecification/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmTestspecification tmtest) {
		return testSpecificationService.datagrid(dg, tmtest);
	}

	/**
	 * 新增测试规范
	 * 
	 * @param tmTest
	 * @return
	 */
	@RequestMapping("testSpecification/saveTest")
	@ResponseBody
	public Json add(TmTestspecification tmTest) {

		Json j = new Json();
		try {
			if (tmTest.getCreatetime() == null) {
				tmTest.setCreatetime(new Date());
			}
			tmTest.setIsdelete(false);
			testSpecificationService.save(tmTest);
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
	 * 修改试验规范
	 * 
	 * @param tmTest
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("testSpecification/updateTest")
	@ResponseBody
	public Json update(TmTestspecification tmTest) throws Exception {
		Json j = new Json();
		try {
			testSpecificationService.updateTest(tmTest);
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
	 * 删除试验规范
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("testSpecification/delTest")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			testSpecificationService.delete(TmTestspecification.class, id);
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

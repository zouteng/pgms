/**
 * 文件名称：RoadInfoController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 道路管理控制器类
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
import com.sgm.domain.TmRoadinfomation;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.dto.Json;
import com.sgm.service.RoadInfoService;

@Controller
public class RoadInfoController extends BaseController {
	@Autowired
	RoadInfoService roadInfoService;

	/**
	 * 获取道路信息列表
	 * 
	 * @param dg
	 * @param roadinfo
	 * @return
	 */
	@RequestMapping("roadInfo/datagrid")
	@ResponseBody
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmRoadinfomation roadinfo) {
		return roadInfoService.datagrid(dg, roadinfo);
	}

	/**
	 * 新增道路信息的方法
	 * 
	 * @param tmroadinfo
	 * @return
	 */
	@RequestMapping("roadInfo/saveRoadInfo")
	@ResponseBody
	public Json add(TmRoadinfomation tmroadinfo) {

		Json j = new Json();
		try {
			if (tmroadinfo.getCreatetime() == null) {
				tmroadinfo.setCreatetime(new Date());
			}
			tmroadinfo.setIsdelete(false);
			roadInfoService.save(tmroadinfo);
			j.setSuccess(true);
			j.setMsg("添加成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("添加失败");
			e.printStackTrace();
		}
		return j;
	}

	@RequestMapping("roadInfo/updateRoadInfo")
	@ResponseBody
	public Json update(TmRoadinfomation roadinfo) throws Exception {
		Json j = new Json();
		try {
			roadInfoService.updateRoadInfo(roadinfo);
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
	 * 删除道路信息
	 * 
	 * @param id
	 * @return
	 * @throws Exception
	 */
	@RequestMapping("roadInfo/delroadInfo")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			roadInfoService.delete(TmRoadinfomation.class, id);
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
	 * 道路级别的combobox值
	 * 
	 * @param levelId
	 * @return
	 */
	@RequestMapping("roadInfo/listAll")
	@ResponseBody
	public List<TmRoadinfomation> getAllRoadInfo(String levelId) {
		return roadInfoService.levelCombobox(levelId);
	}
}

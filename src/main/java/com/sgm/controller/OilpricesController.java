/**
 * 文件名称：OilpricesController.java
 * 文件标识：见配置管理计划书
 * 摘         要: 油品价格控制器类
 * 当前版本：1.0
 * 作          者：zot
 * 完成日期：2013/11/19
 */
package com.sgm.controller;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.Map;
import javax.servlet.http.HttpServletRequest;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import com.sgm.domain.TmOilprices;
import com.sgm.dto.Json;
import com.sgm.service.OilpricesService;
import com.sgm.util.DataFilter;

@Controller
public class OilpricesController extends BaseController {
	@Autowired
	OilpricesService oilpricesService;

	/**
	 * 油品价格
	 * @param map
	 * @param request
	 * @param page
	 * @param rows
	 * @param oiltypeId
	 * @return
	 */
	@RequestMapping("oilprices/datagrid")
	@ResponseBody
	public Map<String, Object> getOilPrices(Map<String, Object> map,
			HttpServletRequest request, int page, int rows, String oiltypeId) {
		String begintime = request.getParameter("begincuttime");
		String endtime = request.getParameter("endcuttime");
		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("oiltypeId", "String", oiltypeId));
		dfList.add(new DataFilter("cuttime", "date", begintime, "gt"));
		dfList.add(new DataFilter("cuttime", "date", endtime, "lt"));
		List<TmOilprices> oilpriceslist = oilpricesService.listPage(page, rows,
				dfList);
		int totalRows = oilpricesService.countAll(TmOilprices.class, dfList);
		map.put("total", totalRows); // total
		map.put("rows", oilpriceslist); // rows
		return map;
	}
	
	/**
	 * 油品类别combobox
	 * @return
	 */
	@RequestMapping("oilprices/combobox")
	@ResponseBody
	public List<TmOilprices> comboboxlist() {
		return oilpricesService.listAll();
	}

	/**
	 * 新增油品价格
	 * @param tmoilprices
	 * @return
	 */
	@RequestMapping("oilprices/saveOilprices")
	@ResponseBody
	public Json add(TmOilprices tmoilprices) {

		Json j = new Json();
		try {
			if (tmoilprices.getCreatetime() == null) {
				tmoilprices.setCreatetime(new Date());
			}
			tmoilprices.setIsdelete(false);
			oilpricesService.save(tmoilprices);
			j.setSuccess(true);
			j.setMsg("添加成功");

		} catch (Exception e) {
			j.setSuccess(false);
			j.setMsg("添加失败");
			e.printStackTrace();
		}
		return j;
	}

	@RequestMapping("oilprices/updateOilprices")
	@ResponseBody
	public Json update(TmOilprices tmoilprices) throws Exception {
		Json j = new Json();
		try {
			oilpricesService.updatOilprices(tmoilprices);
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
     * 删除油品价格
     * @param id
     * @return
     * @throws Exception
     */
	@RequestMapping("oilprices/delOilprices")
	@ResponseBody
	public Json del(String id) throws Exception {
		Json j = new Json();
		try {
			oilpricesService.delete(TmOilprices.class, id);
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

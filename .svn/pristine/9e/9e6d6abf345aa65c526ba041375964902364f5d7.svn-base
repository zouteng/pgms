/**
 * name:RoadInfoServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/19
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sgm.dao.RoadInfoDao;
import com.sgm.domain.TmRoadinfomation;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.RoadInfoService;
import com.sgm.util.DataFilter;

@Service(value = "roadInfoService")
public class RoadInfoServiceImpl extends
		BaseServiceImpl<TmRoadinfomation, String> implements RoadInfoService {
	private RoadInfoDao roadInfoDao;

	public RoadInfoDao getRoadInfoDao() {
		return roadInfoDao;
	}

	@Autowired
	public void setRoadInfoDao(RoadInfoDao roadInfoDao) {
		this.roadInfoDao = roadInfoDao;
		super.setBaseDao(roadInfoDao);
	}

	/**
	 * 道路信息datagrid
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmRoadinfomation roadinfo) {
		EasyuiDataGridJson j = new EasyuiDataGridJson();

		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("roadId", "String", roadinfo.getRoadId()));
		dfList.add(new DataFilter("chinesename", "String", roadinfo
				.getChinesename()));
		dfList.add(new DataFilter("levelId", "String", roadinfo.getLevelId()));
		dfList.add(new DataFilter("status", "String", roadinfo.getStatus()));
		List<TmRoadinfomation> roadinfoList = roadInfoDao.listPage(
				dg.getPage(), dg.getRows(), dfList);
		int totalRows = roadInfoDao.countAll(TmRoadinfomation.class, dfList);

		j.setTotal((long) totalRows);
		j.setRows(roadinfoList);
		return j;
	}

	/**
	 * 修改道路信息
	 */
	@Override
	public void updateRoadInfo(TmRoadinfomation roadinfo) {
		TmRoadinfomation tRoad = roadInfoDao.get(roadinfo.getRoadId());
		tRoad.setCarcounts(roadinfo.getCarcounts());
		tRoad.setChinesename(roadinfo.getChinesename());
		tRoad.setCreator(roadinfo.getCreator());
		tRoad.setEnglishname(roadinfo.getEnglishname());
		tRoad.setIssamecar(roadinfo.getIssamecar());
		tRoad.setLevelId(roadinfo.getLevelId());
		tRoad.setParentroadId(roadinfo.getParentroadId());
		tRoad.setSaferulesId(roadinfo.getSaferulesId());
		tRoad.setStatus(roadinfo.getStatus());

		if (tRoad.getCreatetime() == null) {
			tRoad.setCreatetime(new Date());
		}
		roadInfoDao.saveOrUpdate(tRoad);

	}

	/**
	 * 道路级别 combobox
	 */
	public List<TmRoadinfomation> levelCombobox(String q) {
		if (q == null) {
			q = "";
		}
		String hql = " from TmRoadinfomation where levelId like '%%" + q.trim()
				+ "%%'  and ISDELETE <> '1' ";
		List<TmRoadinfomation> roadlist = roadInfoDao.listByhql(hql);
		return roadlist;
	}

}

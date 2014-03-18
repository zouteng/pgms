/**
 * name:AccessControlSettingServiceImpl.java
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

import com.sgm.dao.AccessControlSettingDao;
import com.sgm.domain.TmAccesscontrolsettings;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.AccessControlSettingService;
import com.sgm.util.DataFilter;

@Service(value = "accessControlSettingService")
public class AccessControlSettingServiceImpl extends
		BaseServiceImpl<TmAccesscontrolsettings, String> implements
		AccessControlSettingService {
	private AccessControlSettingDao accessControlSettingDao;

	public AccessControlSettingDao getAccessControlSettingDao() {
		return accessControlSettingDao;
	}

	@Autowired
	public void setAccessControlSettingDao(
			AccessControlSettingDao accessControlSettingDao) {
		this.accessControlSettingDao = accessControlSettingDao;
		super.setBaseDao(accessControlSettingDao);
	}

	/**
	 * 门禁设置datagrid
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmAccesscontrolsettings tmaccess) {
		EasyuiDataGridJson j = new EasyuiDataGridJson();

		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("area", "String", tmaccess.getArea()));
		dfList.add(new DataFilter("controlnumber", "String", tmaccess
				.getControlnumber()));
		dfList.add(new DataFilter("controlstatusId", "String", tmaccess
				.getControlstatusId()));
		List<TmAccesscontrolsettings> roadinfoList = accessControlSettingDao
				.listPage(dg.getPage(), dg.getRows(), dfList);
		int totalRows = accessControlSettingDao.countAll(
				TmAccesscontrolsettings.class, dfList);

		j.setTotal((long) totalRows);
		j.setRows(roadinfoList);
		return j;
	}

	/**
	 * 修改门禁设置信息
	 */
	@Override
	public void updateAccessSetting(TmAccesscontrolsettings tmaccess) {
		// TODO Auto-generated method stub
		TmAccesscontrolsettings tacs = accessControlSettingDao.get(tmaccess
				.getSettingsId());
		tacs.setArea(tmaccess.getArea());
		tacs.setCarcount(tmaccess.getCarcount());
		tacs.setControlnumber(tmaccess.getControlnumber());
		tacs.setControlstatusId(tmaccess.getControlstatusId());
		tacs.setCreator(tmaccess.getCreator());
		tacs.setDefaultroadId(tmaccess.getDefaultroadId());
		tacs.setIssamecarin(tmaccess.getIssamecarin());

		if (tacs.getCreatetime() == null) {
			tacs.setCreatetime(new Date());
		}
		accessControlSettingDao.saveOrUpdate(tacs);

	}

}

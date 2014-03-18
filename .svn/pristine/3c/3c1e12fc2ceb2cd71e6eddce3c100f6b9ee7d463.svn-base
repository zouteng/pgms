/**
 * name:DeviceManageServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/18
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sgm.dao.DeviceManageDao;
import com.sgm.domain.TmDevicemanagement;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.DeviceManageService;
import com.sgm.util.DataFilter;

@Service(value = "deviceManageService")
public class DeviceManageServiceImpl extends
		BaseServiceImpl<TmDevicemanagement, String> implements
		DeviceManageService {
	private DeviceManageDao deviceManageDao;

	public DeviceManageDao getDeviceManageDao() {
		return deviceManageDao;
	}

	@Autowired
	public void setDeviceManageDao(DeviceManageDao deviceManageDao) {
		this.deviceManageDao = deviceManageDao;
		super.setBaseDao(deviceManageDao);
	}

	/**
	 * 获取设备信息datagrid
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmDevicemanagement tmdevice) {
		EasyuiDataGridJson j = new EasyuiDataGridJson();

		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("devicetypeId", "String", tmdevice
				.getDevicetypeId()));
		dfList.add(new DataFilter("devicestatusId", "String", tmdevice
				.getDevicestatusId()));
		dfList.add(new DataFilter("deviceId", "String", tmdevice.getDeviceId()));
		dfList.add(new DataFilter("inouttype", "boolean", tmdevice
				.getInouttype()!=null?tmdevice
						.getInouttype().toString():null));

		List<TmDevicemanagement> deviceList = deviceManageDao.listPage(
				dg.getPage(), dg.getRows(), dfList);
		int totalRows = deviceManageDao.countAll(TmDevicemanagement.class,
				dfList);

		j.setTotal((long) totalRows);
		j.setRows(deviceList);
		return j;
	}

	/**
	 * 修改设备信息
	 */
	@Override
	public void updateDevice(TmDevicemanagement tmdevice) {
		// TODO Auto-generated method stub
	TmDevicemanagement tdemgt=deviceManageDao.get(tmdevice.getDeviceId());
		tdemgt.setCreator(tmdevice.getCreator());
		tdemgt.setDevicestatusId(tmdevice.getDevicestatusId());
		tdemgt.setDevicetypeId(tmdevice.getDevicetypeId());
		tdemgt.setInouttype(tmdevice.getInouttype());
		tdemgt.setInusecarid(tmdevice.getInusecarid());
		if(tdemgt.getCreatetime()==null){
			tdemgt.setCreatetime(new Date());
		}
		deviceManageDao.saveOrUpdate(tdemgt);
	}

}

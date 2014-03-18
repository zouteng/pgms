/**
 * name:DeviceManageService.java
 * author:zot
 * version:1.0
 * date:2013/11/18
 */
package com.sgm.service;

import com.sgm.domain.TmDevicemanagement;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;

public interface DeviceManageService extends
		BaseService<TmDevicemanagement, String> {

	EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmDevicemanagement tmdevice);

	void updateDevice(TmDevicemanagement tmdevice);
}

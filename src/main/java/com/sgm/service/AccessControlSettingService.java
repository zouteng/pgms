/**
 * name:AccessControlSettingService.java
 * author:zot
 * version:1.0
 * date:2013/11/19
 */
package com.sgm.service;

import com.sgm.domain.TmAccesscontrolsettings;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;

public interface AccessControlSettingService extends
		BaseService<TmAccesscontrolsettings, String> {

	EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmAccesscontrolsettings tmaccess);

	void updateAccessSetting(TmAccesscontrolsettings tmaccess);
}

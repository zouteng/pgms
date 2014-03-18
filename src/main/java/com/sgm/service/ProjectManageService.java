/**
 * name:ProjectManageService.java
 * author:zot
 * version:1.0
 * date:2013/11/20
 */
package com.sgm.service;

import com.sgm.domain.TmProjectinfo;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;

public interface ProjectManageService extends
		BaseService<TmProjectinfo, String> {

	EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmProjectinfo tm);

	void update(TmProjectinfo tp);

}

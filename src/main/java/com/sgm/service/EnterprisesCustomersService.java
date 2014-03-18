/**
 * name:EnterprisesCustomersService.java
 * author:zot
 * version:1.0
 * Date:2013/10/31
 */
package com.sgm.service;

import java.util.List;

import com.sgm.domain.TmEnterprisescustomers;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;

public interface EnterprisesCustomersService extends
		BaseService<TmEnterprisescustomers, String> {

	EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmEnterprisescustomers tm);

	List<TmEnterprisescustomers> combobox(String enterprisesId);

	void updateEnterprises(TmEnterprisescustomers tm);


}

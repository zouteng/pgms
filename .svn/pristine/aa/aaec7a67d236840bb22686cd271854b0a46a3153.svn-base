/**
 * name:ProjectManageServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/20
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgm.dao.ProjectManageDao;
import com.sgm.domain.TmEnterprisescustomers;
import com.sgm.domain.TmProjectinfo;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.ProjectManageService;
import com.sgm.util.DataFilter;

@Service(value = "projectManageService")
public class ProjectManageServiceImpl extends
		BaseServiceImpl<TmProjectinfo, String> implements ProjectManageService {
	private ProjectManageDao projectManageDao;

	public ProjectManageDao getProjectManageDao() {
		return projectManageDao;
	}

	@Autowired
	public void setProjectManageDao(ProjectManageDao projectManageDao) {
		this.projectManageDao = projectManageDao;
		super.setBaseDao(projectManageDao);
	}

	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmProjectinfo tp) {
		// TODO Auto-generated method stub
		EasyuiDataGridJson j = new EasyuiDataGridJson();

		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("projectId", "String", tp.getProjectId()));
		dfList.add(new DataFilter("ownedenterprisesId", "String", tp
				.getOwnedenterprisesId()));
		dfList.add(new DataFilter("statusId", "String", tp.getStatusId()));
		dfList.add(new DataFilter("manageName", "String", tp.getManageName()));
		dfList.add(new DataFilter("typeId", "String", tp.getTypeId()));
		dfList.add(new DataFilter("agreementtypeId", "String", tp
				.getAgreementtypeId()));
		List<TmProjectinfo> tpList = projectManageDao.listPage(dg.getPage(),
				dg.getRows(), dfList);

		// 获取总记录数
		int totalRows = projectManageDao.countAll(TmProjectinfo.class, dfList);

		j.setTotal((long) totalRows);
		j.setRows(tpList);
		return j;
	}

	/**
	 * 修改方法
	 */
	public void update(TmProjectinfo tp) {
		TmProjectinfo tpinfo=projectManageDao.get(tp.getProjectId());
		tpinfo.setAgreementtypeId(tp.getAgreementtypeId());
		tpinfo.setBudget(tp.getBudget());
		tpinfo.setCoordinatorMail(tp.getCoordinatorMail());
		tpinfo.setCoordinatorName(tp.getCoordinatorName());
		tpinfo.setCreator(tp.getCreator());
		tpinfo.setEndtime(tp.getEndtime());
		tpinfo.setManageName(tp.getManageName());
		tpinfo.setNumber(tp.getNumber());
        tpinfo.setOwnedenterprisesId(tp.getOwnedenterprisesId());	
      //  tpinfo.setProjectId(tp.getProjectId());
        tpinfo.setStarttime(tp.getStarttime());
        tpinfo.setStatusId(tp.getStatusId());
        tpinfo.setTypeId(tp.getTypeId());
        
        if(tpinfo.getCreatetime()==null){
        	tpinfo.setCreatetime(new Date());
        }
        projectManageDao.saveOrUpdate(tpinfo);
	}

}

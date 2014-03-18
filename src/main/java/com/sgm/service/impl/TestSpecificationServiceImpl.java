/**
 * name:TestSpecificationServiceImpl.java
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
import com.sgm.dao.TestSpecificationDao;
import com.sgm.domain.TmTestspecification;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.TestSpecificationService;
import com.sgm.util.DataFilter;

@Service(value = "testSpecificationService")
public class TestSpecificationServiceImpl extends
		BaseServiceImpl<TmTestspecification, String> implements
		TestSpecificationService {
	private TestSpecificationDao testSpecificationDao;

	public TestSpecificationDao getTestSpecificationDao() {
		return testSpecificationDao;
	}

	@Autowired
	public void setTestSpecificationDao(
			TestSpecificationDao testSpecificationDao) {
		this.testSpecificationDao = testSpecificationDao;
		super.setBaseDao(testSpecificationDao);
	}

	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmTestspecification tmtest) {
		EasyuiDataGridJson j = new EasyuiDataGridJson();
		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("specificationId", "String", tmtest
				.getSpecificationId()));
		dfList.add(new DataFilter("specificationname", "String", tmtest
				.getSpecificationname()));
		dfList.add(new DataFilter("scope", "String", tmtest.getScope()));
		dfList.add(new DataFilter("securitylevel", "String", tmtest
				.getSecuritylevel()));
		dfList.add(new DataFilter("specificationcategory", "String", tmtest
				.getSpecificationcategory()));

		List<TmTestspecification> deviceList = testSpecificationDao.listPage(
				dg.getPage(), dg.getRows(), dfList);
		int totalRows = testSpecificationDao.countAll(
				TmTestspecification.class, dfList);

		j.setTotal((long) totalRows);
		j.setRows(deviceList);
		return j;
	}

	@Override
	public void updateTest(TmTestspecification tmTest) {
		TmTestspecification testsp = testSpecificationDao.get(tmTest
				.getSpecificationId());
		testsp.setApplydepartment(tmTest.getApplydepartment());
		testsp.setApplyunit(tmTest.getApplyunit());
		testsp.setContent(tmTest.getContent());
		testsp.setCreator(tmTest.getCreator());
		testsp.setEvaluateresult(tmTest.getEvaluateresult());
		testsp.setLength(tmTest.getLength());
		testsp.setRoadId(tmTest.getRoadId());
		testsp.setRoadstatusId(tmTest.getRoadstatusId());
		testsp.setScope(tmTest.getScope());
		testsp.setSecuritylevel(tmTest.getSecuritylevel());
		testsp.setSpecificationcategory(tmTest.getSpecificationcategory());
		testsp.setSpecificationname(tmTest.getSpecificationname());
		testsp.setSpecificationstatus(tmTest.getSpecificationstatus());

		if (testsp.getCreatetime() == null) {
			testsp.setCreatetime(new Date());
		}

		testSpecificationDao.saveOrUpdate(testsp);
	}

}

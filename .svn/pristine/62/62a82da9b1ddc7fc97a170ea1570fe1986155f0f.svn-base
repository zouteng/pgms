/**
 * name:EnterprisesCustomersServiceImpl.java
 * author:zot
 * version:1.0
 * Date:2013/10/31
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.Date;
import java.util.List;

import org.springframework.beans.BeanUtils;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.sgm.dao.EnterprisesCustomersDao;
import com.sgm.domain.TmEnterprisescustomers;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.EnterprisesCustomersService;
import com.sgm.util.DataFilter;

@Service(value = "enterprisesCustomersService")
public class EnterprisesCustomersServiceImpl extends
		BaseServiceImpl<TmEnterprisescustomers, String> implements
		EnterprisesCustomersService {
	private EnterprisesCustomersDao enterprisesCustomersDao;

	public EnterprisesCustomersDao getEnterprisesCustomersDao() {
		return enterprisesCustomersDao;
	}

	@Autowired
	public void setEnterprisesCustomersDao(
			EnterprisesCustomersDao enterprisesCustomersDao) {
		this.enterprisesCustomersDao = enterprisesCustomersDao;
		super.setBaseDao(enterprisesCustomersDao);
	}

	
	/**
	 * cobobox
	 */
	@Override
	public List<TmEnterprisescustomers> combobox(String q) {
		// TODO Auto-generated method stub
		if (q == null) {
			q = "";
		}
		String hql=" from TmEnterprisescustomers where enterprisesId like '%%" + q.trim() + "%%'  and ISDELETE <> '1' ";
		List<TmEnterprisescustomers> elist=	enterprisesCustomersDao.listByhql(hql);
		return elist;
	}
	
	
	
	/**
	 * 获取企业用户的datagrid
	 */
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg,
			TmEnterprisescustomers tm) {
		// TODO Auto-generated method stub
		EasyuiDataGridJson j = new EasyuiDataGridJson();

		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("enterprisesId", "numeric", tm
				.getEnterprisesId(), "eq"));
		dfList.add(new DataFilter("chinesename", "String", tm.getChinesename()));
		dfList.add(new DataFilter("typeId", "String", tm.getTypeId()));
		dfList.add(new DataFilter("relationId", "String", tm.getRelationId()));
		List<TmEnterprisescustomers> enterprisesCustomersList = enterprisesCustomersDao
				.listPage(dg.getPage(), dg.getRows(), dfList);

		// 获取总记录数
		int totalRows = enterprisesCustomersDao.countAll(
				TmEnterprisescustomers.class, dfList);

		j.setTotal((long) totalRows);
		j.setRows(enterprisesCustomersList);
		return j;
	}
/**
 * 修改企业用户信息
 */
	@Override
	public void updateEnterprises(TmEnterprisescustomers tm) {
		// TODO Auto-generated method stub
		TmEnterprisescustomers tep=enterprisesCustomersDao.get(tm.getEnterprisesId());
	/*	tep.setChinesename(tm.getChinesename());
		tep.setAccounts(tm.getAccounts());
        tep.setAddress(tm.getAddress());
        tep.setCountry(tm.getCountry());
        tep.setCreator(tm.getCreator());
        tep.setDepositbank(tm.getDepositbank());
        tep.setEnglishname(tm.getEnglishname());
        tep.setFax(tm.getFax());
        tep.setRelationId(tm.getRelationId());
        tep.setTel(tm.getTel());
        tep.setTypeId(tm.getTypeId());
        tep.setZipcode(tm.getZipcode());
        tep.setNumber(tm.getNumber());*/
		BeanUtils.copyProperties(tm, tep);
        tep.setIsdelete(false);
		if (tep.getCreatetime() == null) {
			tep.setCreatetime(new Date());
		}
		
		enterprisesCustomersDao.saveOrUpdate(tep);
		
	}
	

}

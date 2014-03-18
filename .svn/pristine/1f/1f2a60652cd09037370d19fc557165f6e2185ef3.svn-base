/**
 * name:PriceManageServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/19
 */
package com.sgm.service.impl;

import java.util.ArrayList;
import java.util.List;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sgm.dao.PriceManageDao;
import com.sgm.domain.TmPricemanage;
import com.sgm.dto.EasyuiDataGrid;
import com.sgm.dto.EasyuiDataGridJson;
import com.sgm.service.PriceManageService;
import com.sgm.util.DataFilter;

@Service(value = "priceManageService")
public class PriceManageServiceImpl extends
		BaseServiceImpl<TmPricemanage, String> implements PriceManageService {

	private PriceManageDao priceManageDao;

	public PriceManageDao getPriceManageDao() {
		return priceManageDao;
	}

	@Autowired
	public void setPriceManageDao(PriceManageDao priceManageDao) {
		this.priceManageDao = priceManageDao;
		super.setBaseDao(priceManageDao);
	}

	/**
	 * 价格维护datagrid
	 */
	@Override
	public EasyuiDataGridJson datagrid(EasyuiDataGrid dg, TmPricemanage tmPrice) {

		EasyuiDataGridJson j = new EasyuiDataGridJson();
		List<DataFilter> dfList = new ArrayList();
		dfList.add(new DataFilter("priceprojectId", "String", tmPrice
				.getPriceprojectId()));
		dfList.add(new DataFilter("priceprojectsubclassId", "String", tmPrice
				.getPriceprojectsubclassId()));
		dfList.add(new DataFilter("customtypeId", "numeric", tmPrice
				.getCustomtypeId(), "eq"));

		List<TmPricemanage> deviceList = priceManageDao.listPage(dg.getPage(),
				dg.getRows(), dfList);
		int totalRows = priceManageDao.countAll(TmPricemanage.class, dfList);

		j.setTotal((long) totalRows);
		j.setRows(deviceList);
		return j;
	}

	/**
	 * 修改价格
	 */
	@Override
	public void updatePrice(TmPricemanage tmprice) {
		TmPricemanage tmpgt = priceManageDao.get(tmprice.getPriceId());
		tmpgt.setActivitytype(tmprice.getActivitytype());
		tmpgt.setCreator(tmprice.getCreator());
		tmpgt.setCustomtypeId(tmprice.getCustomtypeId());
		tmpgt.setPrice(tmprice.getPrice());
		tmpgt.setPriceId(tmprice.getPriceId());
		tmpgt.setPriceprojectId(tmprice.getPriceprojectId());
		tmpgt.setPriceprojectsubclassId(tmprice.getPriceprojectsubclassId());
		tmpgt.setPriceunit(tmprice.getPriceunit());
		tmpgt.setWbsnumber(tmprice.getWbsnumber());

		priceManageDao.saveOrUpdate(tmpgt);
	}

}

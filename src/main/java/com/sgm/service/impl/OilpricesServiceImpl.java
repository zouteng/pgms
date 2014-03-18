/**
 * name:OilpricesServiceImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/15
 */
package com.sgm.service.impl;

import java.util.Date;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import com.sgm.dao.OilpricesDao;
import com.sgm.domain.TmOilprices;
import com.sgm.service.OilpricesService;

@Service(value = "oilpricesService")
public class OilpricesServiceImpl extends BaseServiceImpl<TmOilprices, String>
		implements OilpricesService {

	private OilpricesDao oilpricesDao;

	public OilpricesDao getOilpricesDao() {
		return oilpricesDao;
	}

	@Autowired
	public void setOilpricesDao(OilpricesDao oilpricesDao) {
		this.oilpricesDao = oilpricesDao;
		super.setBaseDao(oilpricesDao);
	}

	/**
	 * 修改油品价格
	 */
	public void updatOilprices(TmOilprices tmoilprices) {
		TmOilprices tmOil = oilpricesDao.get(tmoilprices.getOilId());
		tmOil.setCreator(tmoilprices.getCreator());
		tmOil.setCutday(tmoilprices.getCuttime());
		tmOil.setCuttime(tmoilprices.getCuttime());
		tmOil.setOilprice(tmoilprices.getOilprice());
		tmOil.setOiltypeId(tmoilprices.getOiltypeId());
		tmOil.setUpdaterpeopleId(tmoilprices.getUpdaterpeopleId());
		tmOil.setUpdatetime(new Date());
		if (tmOil.getCreatetime() == null) {
			tmOil.setCreatetime(new Date());
		}
		oilpricesDao.saveOrUpdate(tmOil);

	}

}

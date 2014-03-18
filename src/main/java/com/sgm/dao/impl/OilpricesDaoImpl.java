/**
 * name:OilpricesDaoImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/15
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.OilpricesDao;
import com.sgm.domain.TmOilprices;

@Repository(value = "oilpricesDao")
public class OilpricesDaoImpl extends BaseDaoImpl<TmOilprices, String>
		implements OilpricesDao {
}

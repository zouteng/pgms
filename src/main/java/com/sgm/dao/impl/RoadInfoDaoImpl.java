/**
 * name:RoadInfoDaoImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/19
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.RoadInfoDao;
import com.sgm.domain.TmRoadinfomation;

@Repository(value = "roadInfoDao")
public class RoadInfoDaoImpl extends BaseDaoImpl<TmRoadinfomation, String>
		implements RoadInfoDao {
}

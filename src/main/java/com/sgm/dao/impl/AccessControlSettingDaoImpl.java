/**
 * name:AccessControlSettingDaoImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/19
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.AccessControlSettingDao;
import com.sgm.domain.TmAccesscontrolsettings;

@Repository(value = "accessControlSettingDao")
public class AccessControlSettingDaoImpl extends
		BaseDaoImpl<TmAccesscontrolsettings, String> implements
		AccessControlSettingDao {
}

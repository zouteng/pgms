/**
 * name:DeviceManageDaoImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/18
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.DeviceManageDao;
import com.sgm.domain.TmDevicemanagement;

@Repository(value = "deviceManageDao")
public class DeviceManageDaoImpl extends
		BaseDaoImpl<TmDevicemanagement, String> implements DeviceManageDao {
}

/**
 * name:TestSpecificationDaoImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/19
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.TestSpecificationDao;
import com.sgm.domain.TmTestspecification;

@Repository(value = "testSpecificationDao")
public class TestSpecificationDaoImpl extends
		BaseDaoImpl<TmTestspecification, String> implements
		TestSpecificationDao {
}

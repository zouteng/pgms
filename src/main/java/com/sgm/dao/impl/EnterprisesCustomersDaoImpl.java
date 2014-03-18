/**
 * name:EnterprisesCustomersDaoImpl.java
 * author:zot
 * version:1.0
 * Date:2013/10/31
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.EnterprisesCustomersDao;
import com.sgm.domain.TmEnterprisescustomers;

@Repository(value = "enterprisesCustomersDao")
public class EnterprisesCustomersDaoImpl extends
		BaseDaoImpl<TmEnterprisescustomers, String> implements
		EnterprisesCustomersDao {
}

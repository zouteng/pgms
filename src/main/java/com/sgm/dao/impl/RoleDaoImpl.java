/**
 * name:RoleDaoImpl.java
 * author:zot
 * version:1.0
 * date:2013/11/8
 */
package com.sgm.dao.impl;

import org.springframework.stereotype.Repository;
import com.sgm.dao.RoleDao;
import com.sgm.domain.TsRole;

@Repository(value = "roleDao")
public class RoleDaoImpl extends BaseDaoImpl<TsRole, String> implements RoleDao {
}

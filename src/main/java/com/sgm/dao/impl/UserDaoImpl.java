/**
 * name:UserDaoImpl.java
 * version:1.0
 * Author:zot
 * Date:2013/10/21
 */
package com.sgm.dao.impl;

import java.util.List;
import org.hibernate.Query;
import org.springframework.stereotype.Repository;
import org.springframework.web.bind.annotation.ModelAttribute;
import com.sgm.dao.UserDao;
import com.sgm.domain.TsUser;

@Repository(value = "userDao")
public class UserDaoImpl extends BaseDaoImpl<TsUser, String> implements UserDao {
	@ModelAttribute
	public TsUser queryUserByName(String name) {
		String hql = "from TsUser u where u.loginName=?0";
		Query query = getSession().createQuery(hql);
		query.setString("0", name);
		List list = query.list();
		if (!list.isEmpty()) {
			return (TsUser) list.get(0);
		} else {
			return null;
		}
	}
}

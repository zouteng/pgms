package com.sgm.service.impl;

import java.io.Serializable;
import java.util.List;

import org.springframework.transaction.annotation.Transactional;

import com.sgm.dao.BaseDao;
import com.sgm.domain.BaseEntity;
import com.sgm.service.BaseService;

public class BaseServiceImpl<T extends BaseEntity, PK extends Serializable>
		implements BaseService<T, PK> {
	protected BaseDao<T, PK> baseDao;

	public BaseDao<T, PK> getBaseDao() {
		return baseDao;
	}

	public void setBaseDao(BaseDao<T, PK> baseDao) {
		this.baseDao = baseDao;
	}

	@Override
	public T save(T model) {
		baseDao.save(model);
		return model;
	}

	@Override
	public void saveOrUpdate(T model) {
		baseDao.saveOrUpdate(model);
	}

	@Override
	public void update(T model) {
		baseDao.update(model);
	}

	@Override
	public void deleteObject(T model) {
		baseDao.deleteObject(model);
	}

	@Override
	public List<T> listAll() {
		return baseDao.listAll();
	}

	@Override
	public void delete(Class<T> entityClass, PK id) {
		// TODO Auto-generated method stub
		System.out.println("删除BaseService中方法" + id);
		baseDao.delete(entityClass, id);
	}

	@Override

	public T get(Class<T> entityClass, PK id) {
		return baseDao.get(id);
	}

	@Override

	public int countAll(Class<T> entityClass) {
		// TODO Auto-generated method stub
		return baseDao.countAll(entityClass);
	}

	@Override
	public List<T> listPage(int page, int size) {
		// TODO Auto-generated method stub
		return baseDao.listPage(page, size);
	}

	@Override
	public List<T> listByhql(String hql) {
		// TODO Auto-generated method stub
		return baseDao.listByhql(hql);
	}

	@Override
	public List<T> listPage(int page, int size, List list) {
		// TODO Auto-generated method stub
		System.out.print("page"+page);
		return baseDao.listPage(page, size, list);
	}

	@Override
	public int countAll(Class<T> entityClass, List list) {
		// TODO Auto-generated method stub
		return baseDao.countAll(entityClass, list);
	}
}

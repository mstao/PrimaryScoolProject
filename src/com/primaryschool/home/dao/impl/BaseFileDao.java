package com.primaryschool.home.dao.impl;

import java.util.List;

import org.hibernate.Query;
import org.hibernate.SessionFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import com.primaryschool.home.dao.IBaseFileDao;
import com.primaryschool.home.dao.ITypeFlagToTypeIdDao;

/**
 * 
* @ClassName: BaseFileDao
* @Description: TODO  文件
* @author Mingshan
* @date 2017年4月21日 下午5:35:55
*
* @param <T>
 */
@Repository
public class BaseFileDao<T> implements IBaseFileDao<T> {

	@Autowired
	private SessionFactory sessionFactory;
	
	@Autowired 
	private ITypeFlagToTypeIdDao typeFlagToTypeId;
	/**
	 *获取文件
	 */
	@SuppressWarnings("unchecked")
	@Override
	public List<T> findFile(String belongType) {
		// TODO Auto-generated method stub
		//根据类型获取id
		int id=typeFlagToTypeId.findFileBelongIdByBelongFalg(belongType);
		String hql="from FileBean fb,FileBelong fbg where fbg.id=? and fb.fileBlongId=fbg.id  order by fb.addTime desc";
		Query query=sessionFactory.getCurrentSession().createQuery(hql);
		query.setInteger(0,id);
		
		return query.list();
	}

}

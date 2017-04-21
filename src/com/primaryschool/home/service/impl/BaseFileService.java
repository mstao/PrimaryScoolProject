package com.primaryschool.home.service.impl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import com.primaryschool.home.dao.IBaseFileDao;
import com.primaryschool.home.service.IBaseFileService;
/**
 * 
* @ClassName: BaseFileService
* @Description: TODO 文件
* @author Mingshan
* @date 2017年4月21日 下午5:45:44
*
* @param <T>
 */
@Service
public class BaseFileService<T> implements IBaseFileService<T> {

	@Autowired
	private  IBaseFileDao<T> baseFileDao;
	@Override
	public List<T> findFile(String belongType) {
		// TODO Auto-generated method stub
		return baseFileDao.findFile(belongType);
	}

}

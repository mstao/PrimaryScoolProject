package com.primaryschool.home.service;

import java.util.List;

public interface IBaseFileService<T> {

	//获取文件
	List<T>  findFile(String belongType,int itemId);
	//获取单个文件
	T findFileById(String belongType,int itemId);
	//获取文件
	List<T> findFiles(String belongType);
}

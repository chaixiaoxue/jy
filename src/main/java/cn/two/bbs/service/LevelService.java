package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.ExpLevel;

public interface LevelService{

	public List<ExpLevel> findAll();

	public void save(ExpLevel level);

	public void delete(String[] levelIds);

	public ExpLevel findOne(String levelId);

	public void update(ExpLevel level);
	
}
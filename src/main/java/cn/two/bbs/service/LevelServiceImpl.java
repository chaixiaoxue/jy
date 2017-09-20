package cn.two.bbs.service;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import java.util.Date;
import java.util.List;

import cn.two.bbs.mapper.LevelMapper;
import cn.two.bbs.pojo.ExpLevel;

@Service
public class LevelServiceImpl implements LevelService{
	
	@Resource
	private LevelMapper levelMapper;

	public List<ExpLevel> findAll() {
		return levelMapper.findAll();
	}

	public void save(ExpLevel level) {
		level.setCreateTime(new Date());
		levelMapper.save(level);
	}

	public void delete(String[] levelIds) {
		levelMapper.delete(levelIds);
		
	}

	public ExpLevel findOne(String levelId) {
		return levelMapper.findOne(levelId);
	}

	public void update(ExpLevel level) {
		//level.setUpdateTime(new Date());
		levelMapper.update(level);
	}
}

package cn.two.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Select;

import cn.two.bbs.pojo.ExpLevel;

public interface LevelMapper {

	public List<ExpLevel> findAll();

	public void save(ExpLevel ExpLevel);

	public void delete(String[] ExpLevelIds);
	
	@Select("select * from exp_level_p where Level_ID=#{ExpLevelId}")
	public ExpLevel findOne(String ExpLevelId);

	public void update(ExpLevel ExpLevel);

	public Integer getLevel(Integer experience);
}
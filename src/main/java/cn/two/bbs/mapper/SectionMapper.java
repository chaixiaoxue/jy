package cn.two.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.two.bbs.pojo.Section;

public interface SectionMapper {

	/**
	 * 查询全部版块
	 */
	public List<Section> findAll();

	/**
	 * 新增版块
	 */
	public void saveSection(Section section);

	public Section findOne(String sectionId);

	public void updateSection(Section section);

	public void deleteSections(String[] sectionId);
	
	/**
	 *  根据名字模糊查询版块
	 */
	@Select("SELECT * FROM section_p where section_name LIKE concat('%',#{section_name},'%')")
	public List<Section> findSectionByName(String sectionName);

	public void updateState(@Param("sectionId")String[] sectionId, @Param("state")Integer state);
	
}

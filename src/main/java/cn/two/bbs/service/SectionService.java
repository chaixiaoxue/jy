package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Section;

public interface SectionService {

	public List<Section> findAll();

	public void saveSection(Section section, String[] managerIds);

	public Section findOne(String sectionId);

	public void updateSection(Section section, String[] managerIds);

	public void deleteSections(String[] sectionId);

	public List<Section> findSectionByName(String section_name);

	public void updateState(String[] sectionId, Integer state);
	
}

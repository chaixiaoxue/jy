package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.S_UMapper;
import cn.two.bbs.mapper.SectionMapper;
import cn.two.bbs.mapper.UserMapper;
import cn.two.bbs.pojo.Section;
import cn.two.bbs.pojo.User;

@Service
public class SectionServiceImpl implements SectionService {

	@Resource
	private SectionMapper sectionMapper;
	@Resource
	private S_UMapper s_UMapper;
	@Resource
	private UserMapper userMapper;
	public List<Section> findAll() {
		return sectionMapper.findAll();
	}

	public void saveSection(Section section,String[] managerIds) {
		section.setSectionId(UUID.randomUUID().toString());
		section.setCreateTime(new Date());
		for (String managerId : managerIds) {
			s_UMapper.save(section.getSectionId(), managerId);
			User user = userMapper.findOne(managerId);
			
			//别的service更改用户的用户组时添加的更改时间
			userMapper.updateUserTime(managerId, new Date());
			
			int id = 1;
					//Integer.valueOf(user.getGroup().getGroupId());
			if(id<5){
				userMapper.updateUserGroupForSection(managerId,"5");
			}else if (id==5) {
				userMapper.updateUserGroupForSection(managerId,"6");
			}else if (id==6) {
				userMapper.updateUserGroupForSection(managerId,"7");
			} else {
				continue;
			}
		}
		sectionMapper.saveSection(section);
	}
	public Section findOne(String sectionId) {
		return sectionMapper.findOne(sectionId);
	}

	public void updateSection(Section section,String[] managerIds) {
		//section.setUpdateTime(new Date());
		s_UMapper.deleteS_UBySid(section.getSectionId());
		for (String managerId : managerIds) {
			s_UMapper.save(section.getSectionId(),managerId);
		}
		System.out.println("updateSection");
		sectionMapper.updateSection(section);
	}

	public void deleteSections(String[] sectionId) {
		sectionMapper.deleteSections(sectionId);
		for (String string : sectionId) {
			s_UMapper.deleteS_UBySid(string);
		}
	}

	public List<Section> findSectionByName(String sectionName) {
		
		return sectionMapper.findSectionByName(sectionName);
	}

	public void updateState(String[] sectionId, Integer state) {
		sectionMapper.updateState(sectionId,state);
	}

}

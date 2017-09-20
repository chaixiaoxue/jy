package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.GroupMapper;
import cn.two.bbs.mapper.UserMapper;
import cn.two.bbs.pojo.Group;
import cn.two.bbs.pojo.User;
@Service
public class GroupServiceImpl implements GroupService {
	@Resource
	private GroupMapper groupMapper;
	@Resource
	private UserMapper userMapper;
	public List<Group> findAll() {
		return groupMapper.findAll();
	}

	public void updateState(String[] groupId, Integer state) {
		groupMapper.updateState(groupId,state);
	}

	public void deleteGroups(String[] groupId) {
		groupMapper.deleteGroups(groupId);
	}

	public void saveGroup(Group group) {
		group.setCreateTime(new Date());
		group.setGroupId(UUID.randomUUID().toString());
		group.setState(1);
		groupMapper.saveGroup(group);
	}

	public List<User> searchUsersByKeywords(String keywords) {
		return userMapper.searchUsersByKeywords(keywords);
	}

	public Group findOne(String groupId) {
		return groupMapper.findOne(groupId);
	}

	public List<User> searchUsersByGid(String groupId) {
		return userMapper.searchUsersByGid(groupId);
	}

	public void updateGroup(Group group) {
		groupMapper.updateGroup(group);
	}

}

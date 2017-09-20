package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Group;
import cn.two.bbs.pojo.User;

public interface GroupService {

	List<Group> findAll();

	void updateState(String[] groupId, Integer state);

	void deleteGroups(String[] groupId);

	void saveGroup(Group group);

	List<User> searchUsersByKeywords(String in);

	Group findOne(String groupId);

	List<User> searchUsersByGid(String groupId);

	void updateGroup(Group group);

}

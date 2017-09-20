package cn.two.bbs.mapper;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.two.bbs.pojo.Group;

public interface GroupMapper {
	@Select("select * from group_p")
	List<Group> findAll();
	
	void updateState(@Param("groupId")String[] groupId,@Param("state") Integer state);
	
	void saveGroup(Group group);
	
	void deleteGroups(String[] groupId);
	@Select("select * from group_p where group_id=#{groupId}")
	Group findOne(String groupId);
	void updateGroup(Group group);
	
}

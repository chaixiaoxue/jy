package cn.two.bbs.mapper;

import java.util.Date;
import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import com.sun.org.glassfish.gmbal.ParameterNames;

import cn.two.bbs.pojo.User;

public interface UserMapper {
	List<User> findAll();

	void updateState(@Param("userId")String userId, @Param("lastLoginIp")String lastLoginIp);
	
	void deleteUsers(String id);

	void updateGroup(@Param("userId")String userId,@Param("renewpass")String renewpass);

	List<User> searchUsersByKeywords(String keywords);
	
	List<User> searchUsersByGid(String groupId);
	
	User findOne(String userId);

	List<User> findAllManagers();

	void updateUserGroupForSection(@Param("managerId")String managerId,@Param("groupId")String groupId);

	void updateUser(User user);

	void updateUserTime(@Param("userId")String userId,@Param("lostLoginTime") Date lostLoginTime);
	
	void updateExp(@Param("userId")String userId,@Param("exp")Integer exp);
	
	void updateLevel(@Param("userId")String userId,@Param("i")Integer i);

	void saveUser(User user);
	
	public User findUserByNAndP(@Param("userName")String userName,@Param("password")String password);
	
	User findUserByUsername(String username);
	
	User findUserByEmail(String email);

	

}

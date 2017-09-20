package cn.two.bbs.service;

import java.util.Date;
import java.util.List;

import cn.two.bbs.pojo.User;
import cn.two.bbs.pojo.Web_Set;

public interface UserService {
	public List<User> findAll();

	public void updateState(String[] userId, Integer state);

	public void deleteUsers(String id);

	public void saveUser(User user);

	public void updateGroup(String userId, String renewpass);
	
	public User findOne(String managerId);

	public List<User> findAllManagers();
	
	public User findUserByNAndP(String userName,String password);
	
	public User findUserByUsername(String username);

	public User findUserByEmail(String email);

	public void updatelostLoginTime(String userId, Date lostLoginTime);

	public void updateTimes(String userId, int i);

	public void updateIp(String userId, String lastLoginIp);

	public Web_Set findWebset();

	public void updateWebSet(Web_Set web_Set);

}

package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.UserMapper;
import cn.two.bbs.mapper.Web_SetMapper;
import cn.two.bbs.pojo.User;
import cn.two.bbs.pojo.Web_Set;
import cn.two.bbs.utils.MD5;

@Service
public class UserServiceImpl implements UserService{
	
	@Resource
	private UserMapper userMapper;
	@Resource
	private Web_SetMapper wSetMapper;
	public List<User> findAll() {
		return userMapper.findAll();
	}
	public void updateState(String[] userId, Integer state) {
		for(String uId:userId){
			userMapper.updateUserTime(uId,new Date());
		}
		//userMapper.updateState(userId,state);
	}
	
	public void deleteUsers(String id) {
		userMapper.deleteUsers(id);
		
	}
	public void saveUser(User user) {
		user.setUserId(UUID.randomUUID().toString());
		
		user.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		user.setTimes(0);
		//user.setState(1);
		//user.setLevel(1);
		//user.setExp(1000);
		user.setPassword(MD5.getMD5Hash(user.getUsername(), user.getPassword()));
		userMapper.saveUser(user);
	}
	public void updateGroup(String userId,String renewpass) {
		/*for(String uId:userId){
			userMapper.updateUserTime(uId,new Date());
		}*/
		userMapper.updateGroup(userId,renewpass);	
	}
	public User findOne(String managerId) {
		return userMapper.findOne(managerId);
	}
	public List<User> findAllManagers() {
		return userMapper.findAllManagers();
	}
	
	public User findUserByNAndP(String userName, String password) {
		
		return userMapper.findUserByNAndP(userName, password);
	}
	public User findUserByUsername(String username) {
		return userMapper.findUserByUsername(username);
	}
	public User findUserByEmail(String email) {
		return userMapper.findUserByEmail(email);
	}
	@Override
	public void updatelostLoginTime(String userId, Date lostLoginTime) {
		// TODO Auto-generated method stub
		userMapper.updateUserTime(userId, lostLoginTime);
	}
	@Override
	public void updateTimes(String userId, int i) {
		// TODO Auto-generated method stub
		userMapper.updateLevel(userId, i);
		
	}
	@Override
	public void updateIp(String userId, String lastLoginIp) {
		// TODO Auto-generated method stub
		userMapper.updateState(userId, lastLoginIp);
	}
	@Override
	public Web_Set findWebset() {
		return wSetMapper.findWebset();
	}
	@Override
	public void updateWebSet(Web_Set web_Set) {
		// TODO Auto-generated method stub
		wSetMapper.updateWebSet(web_Set);
	}
	
	
}

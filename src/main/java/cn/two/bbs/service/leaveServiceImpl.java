package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import com.mysql.fabric.xmlrpc.base.Data;

import cn.two.bbs.mapper.LeaveMapper;
import cn.two.bbs.pojo.Leave;
import cn.two.bbs.pojo.Reply;

@Service
public class leaveServiceImpl implements LeaveService{
	@Resource
	private LeaveMapper leaveMapper;
	@Override
	public List<Leave> findAll() {
		// TODO Auto-generated method stub
		return leaveMapper.findAll();
	}
	@Override
	public Leave findOne(String id) {
		// TODO Auto-generated method stub
		return leaveMapper.findOne(id);
	}
	@Override
	public Reply findReply(String id) {
		// TODO Auto-generated method stub
		return leaveMapper.findReply(id);
	}
	@Override
	public void saveReply(Reply reply) {
		// TODO Auto-generated method stub
		reply.setId(UUID.randomUUID().toString());
		reply.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		leaveMapper.savereply(reply);
	}
	@Override
	public void updateReply(Reply reply) {
		// TODO Auto-generated method stub
		reply.setUpdateTime(new java.sql.Timestamp(new Date().getTime()));
		leaveMapper.updateReply(reply);
		
	}
	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		leaveMapper.delete(id);
	}
	@Override
	public void deletereply(String id) {
		// TODO Auto-generated method stub
		leaveMapper.deletereply(id);
		
	}
	@Override
	public List<Leave> findMore(String keywords) {
		// TODO Auto-generated method stub
		keywords = "%"+keywords+"%";
		return leaveMapper.findMore(keywords);
	}
	@Override
	public void saveLeave(Leave leave) {
		// TODO Auto-generated method stub
		leave.setId(UUID.randomUUID().toString());
		leave.setCreateBy(leave.getUsername());
		leave.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		leaveMapper.saveLeave(leave);
	}

}

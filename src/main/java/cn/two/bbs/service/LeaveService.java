package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Leave;
import cn.two.bbs.pojo.Reply;

public interface LeaveService {

	List<Leave> findAll();

	Leave findOne(String id);

	Reply findReply(String id);

	void saveReply(Reply reply);

	void updateReply(Reply reply);

	void delete(String id);

	void deletereply(String id);

	List<Leave> findMore(String keywords);

	void saveLeave(Leave leave);

}

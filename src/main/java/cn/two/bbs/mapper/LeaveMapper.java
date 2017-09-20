package cn.two.bbs.mapper;

import java.util.List;

import cn.two.bbs.pojo.Leave;
import cn.two.bbs.pojo.Reply;

public interface LeaveMapper {

	List<Leave> findAll();

	Leave findOne(String id);

	Reply findReply(String id);

	void savereply(Reply reply);

	void updateReply(Reply reply);

	void delete(String id);

	void deletereply(String id);

	List<Leave> findMore(String keywords);

	void saveLeave(Leave leave);

}

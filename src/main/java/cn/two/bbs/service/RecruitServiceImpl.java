package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.RecruitMapper;
import cn.two.bbs.pojo.Apply;
import cn.two.bbs.pojo.Recruit;

@Service
public class RecruitServiceImpl implements RecruitService{
	@Resource
	private RecruitMapper recruitMapper;
	@Override
	public List<Recruit> findAll() {
		// TODO Auto-generated method stub
		return recruitMapper.findAll();
	}
	@Override
	public Recruit findOne(String id) {
		// TODO Auto-generated method stub
		return recruitMapper.findOne(id);
	}
	@Override
	public void update(Recruit recruit) {
		// TODO Auto-generated method stub
		recruit.setUpdateTime(new java.sql.Timestamp(new Date().getTime()));
		recruitMapper.update(recruit);
	}
	@Override
	public void delete(String id) {
		// TODO Auto-generated method stub
		recruitMapper.delete(id);
		recruitMapper.deleteapply(id);
	}
	@Override
	public void saveRecruit(Recruit recruit) {
		// TODO Auto-generated method stub
		recruit.setId(UUID.randomUUID().toString());
		recruit.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		recruitMapper.saveRecruit(recruit);
	}
	@Override
	public List<Apply> findAllApply() {
		// TODO Auto-generated method stub
		return recruitMapper.findAllApply();
	}
	@Override
	public List<Apply> findAllApplyB_P(String parentId) {
		// TODO Auto-generated method stub
		return recruitMapper.findAllApplyB_P(parentId);
	}
	@Override
	public void deleteapplyPerson(String id) {
		// TODO Auto-generated method stub
		recruitMapper.deleteapplyPerson(id);
	}
	@Override
	public void deleteapply(String parentId) {
		// TODO Auto-generated method stub
		recruitMapper.deleteapply(parentId);
		
	}
	@Override
	public void saveApply(Apply apply) {
		// TODO Auto-generated method stub
		apply.setId(UUID.randomUUID().toString());
		apply.setApplyTime(new java.sql.Timestamp(new Date().getTime()));
		recruitMapper.saveApply(apply);
	}
	@Override
	public List<Recruit> findrecruits(String title) {
		// TODO Auto-generated method stub
		return recruitMapper.findrecruits(title);
	}
	@Override
	public List<String> findAllTitle() {
		// TODO Auto-generated method stub
		return recruitMapper.findAllTitle();
	}
	
}

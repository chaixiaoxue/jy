package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.CompanyMapper;
import cn.two.bbs.mapper.TalentMapper;
import cn.two.bbs.pojo.CV;
import cn.two.bbs.pojo.Part;
@Service
public class TalentServiceImpl implements TalentService{

	@Resource 
	private TalentMapper talentMapper;
	@Override
	public void saveTalent(Part part) {
		
		part.setId(UUID.randomUUID().toString());
		part.setParentId("3");
		part.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		talentMapper.saveTalent(part);
		
	}
	@Override
	public List<Part> fandAll() {
		return talentMapper.fandAll();
	}
	@Override
	public Part findOne(String id) {
		// TODO Auto-generated method stub
		return talentMapper.findOne(id);
	}
	@Override
	public void updateTalent(Part part) {
		// TODO Auto-generated method stub
		part.setParentId("3");
		part.setUpdateTime(new Date());
		talentMapper.updateTalent(part);
	}
	@Override
	public void deleteTalent(String id) {
		// TODO Auto-generated method stub
		talentMapper.deleteTalent(id);
	}
	@Override
	public void saveCv(CV cv) {
		// TODO Auto-generated method stub
		cv.setId(UUID.randomUUID().toString());
		cv.setCreateTime(new Date());
		talentMapper.saveCv(cv);
	}
	@Override
	public List<CV> fandAllCv() {
		// TODO Auto-generated method stub
		return talentMapper.fandAllCv();
	}
	@Override
	public CV findOneCv(String id) {
		// TODO Auto-generated method stub
		return talentMapper.findOneCv(id);
	}
	@Override
	public void updateCv(CV cv) {
		// TODO Auto-generated method stub
		cv.setUpdateTime(new Date());
		talentMapper.updateCv(cv);
	}
	@Override
	public void deletecv(String id) {
		// TODO Auto-generated method stub
		talentMapper.deletecv(id);
	}
	@Override
	public List<CV> findMore(String keywords) {
		// TODO Auto-generated method stub
		keywords = "%"+keywords+"%";
		return talentMapper.findMore(keywords);
	}

}

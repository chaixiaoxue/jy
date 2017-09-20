package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.CaseMapper;
import cn.two.bbs.mapper.CompanyMapper;
import cn.two.bbs.pojo.Part;
@Service
public class CaseServiceImpl implements CaseService{
	@Resource 
	private CompanyMapper companyMapper;
	@Resource
	private CaseMapper caseMapper;
	@Override
	public void saveCase(Part part) {
		
		part.setId(UUID.randomUUID().toString());
		part.setParentId("5");
		part.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		caseMapper.saveCase(part);
		
	}
	@Override
	public List<Part> fandAll() {
		return caseMapper.fandAll();
	}
	@Override
	public Part findOne(String id) {
		// TODO Auto-generated method stub
		return caseMapper.findOne(id);
	}
	@Override
	public void updateCase(Part part) {
		// TODO Auto-generated method stub
		part.setParentId("5");
		part.setUpdateTime(new Date());
		caseMapper.updateCase(part);
	}
	@Override
	public void deleteCase(String id) {
		// TODO Auto-generated method stub
		caseMapper.deleteCase(id);
	}
	@Override
	public List<Part> fandAllImg() {
		// TODO Auto-generated method stub
		return caseMapper.fandAllImg();
	}
	
}

package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.CompanyMapper;
import cn.two.bbs.pojo.Part;
@Service
public class CompanyServiceImpl implements CompanyService{
	@Resource 
	private CompanyMapper companyMapper;
	@Override
	public void saveCompany(Part part) {
		
		part.setId(UUID.randomUUID().toString());
		part.setParentId("1");
		part.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		companyMapper.saveCompany(part);
		
	}
	@Override
	public List<Part> fandAll() {
		return companyMapper.fandAll();
	}
	@Override
	public Part findOne(String id) {
		// TODO Auto-generated method stub
		return companyMapper.findOne(id);
	}
	@Override
	public void updateCompany(Part part) {
		// TODO Auto-generated method stub
		part.setParentId("1");
		part.setUpdateTime(new Date());
		companyMapper.updateCompany(part);
	}
	@Override
	public void deleteCompany(String id) {
		// TODO Auto-generated method stub
		companyMapper.deleteCompany(id);
	}

}

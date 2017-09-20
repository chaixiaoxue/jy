package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.CompanyMapper;
import cn.two.bbs.mapper.NewMapper;
import cn.two.bbs.pojo.Part;
@Service
public class NewServiceImpl implements NewService{
	@Resource 
	private CompanyMapper companyMapper;
	@Resource NewMapper newMapper;
	@Override
	public void saveNew(Part part) {
		
		part.setId(UUID.randomUUID().toString());
		part.setParentId("4");
		Date date = new Date();
		System.out.println(date);
		System.out.println(date.toString());
		part.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		newMapper.saveNew(part);
		
	}
	@Override
	public List<Part> fandAll() {
		return newMapper.fandAll();
	}
	@Override
	public Part findOne(String id) {
		// TODO Auto-generated method stub
		return newMapper.findOne(id);
	}
	@Override
	public void updateNew(Part part) {
		// TODO Auto-generated method stub
		part.setParentId("4");
		part.setUpdateTime(new Date());
		newMapper.updateNew(part);
	}
	@Override
	public void deleteNew(String id) {
		// TODO Auto-generated method stub
		newMapper.deleteNew(id);
	}
	@Override
	public void savenews(Part part) {
		// TODO Auto-generated method stub
		part.setId(UUID.randomUUID().toString());
		part.setCreateTime(new java.sql.Timestamp(new java.util.Date().getTime()));
		newMapper.savenews(part);
	}
	@Override
	public List<Part> fandAllNews(String[] p) {
		// TODO Auto-generated method stub
		return newMapper.fandAllNews(p);
	}
	@Override
	public Part findOneNews(String id) {
		// TODO Auto-generated method stub
		return newMapper.toviewnews(id);
	}
	@Override
	public void updateNews(Part part) {
		// TODO Auto-generated method stub
		part.setCreateTime(new Date());
		newMapper.updateNew(part);
		
	}
}

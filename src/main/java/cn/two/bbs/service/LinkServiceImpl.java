package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.CompanyMapper;
import cn.two.bbs.mapper.LinkMapper;
import cn.two.bbs.pojo.Part;
@Service
public class LinkServiceImpl implements LinkService{
	@Resource 
	private CompanyMapper companyMapper;
	@Resource
	private LinkMapper linkMapper;
	@Override
	public void saveLink(Part part) {
		
		part.setId(UUID.randomUUID().toString());
		part.setParentId("6");
		part.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		linkMapper.saveLink(part);
		
	}
	@Override
	public List<Part> fandAll() {
		return linkMapper.fandAll();
	}
	@Override
	public Part findOne(String id) {
		// TODO Auto-generated method stub
		return linkMapper.findOne(id);
	}
	@Override
	public void updateLink(Part part) {
		// TODO Auto-generated method stub
		part.setParentId("6");
		part.setUpdateTime(new Date());
		linkMapper.updateLink(part);
	}
	@Override
	public void deleteLink(String id) {
		// TODO Auto-generated method stub
		linkMapper.deleteLink(id);
	}

}

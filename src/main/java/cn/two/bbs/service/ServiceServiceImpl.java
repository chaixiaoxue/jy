package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.ServiceMapper;
import cn.two.bbs.pojo.Part;

@Service
public class ServiceServiceImpl implements ServiceService{
	@Resource
	private ServiceMapper serviceMapper;
	@Override
	public void saveService(Part part) {
		
		part.setId(UUID.randomUUID().toString());
		//part.setParentId("2");
		part.setCreateTime(new java.sql.Timestamp(new Date().getTime()));
		serviceMapper.saveService(part);
	}
	@Override
	public List<Part> findAll() {
		// TODO Auto-generated method stub
		return serviceMapper.findAll();
	}
	@Override
	public Part findOne(String id) {
		// TODO Auto-generated method stub
		return serviceMapper.findOne(id);
	}
	@Override
	public void updateService(Part part) {
		// TODO Auto-generated method stub
		part.setParentId("2");
		serviceMapper.updateService(part);
	}
	@Override
	public void deleteService(String id) {
		// TODO Auto-generated method stub
		serviceMapper.deleteService(id);
	}
	@Override
	public List<Part> findMore(String keywords) {
		// TODO Auto-generated method stub
		keywords = "%"+keywords+"%";
		return serviceMapper.findMore(keywords);
	}
	@Override
	public Part findOneByP_Id(String parentId) {
		// TODO Auto-generated method stub
		return serviceMapper.findOneByP_Id(parentId);
	}
	@Override
	public List<Part> sonListToview(String parentId) {
		// TODO Auto-generated method stub
		return serviceMapper.sonListToview(parentId);
	}

}

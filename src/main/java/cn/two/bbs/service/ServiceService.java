package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Part;

public interface ServiceService {

	void saveService(Part part);

	List<Part> findAll();

	Part findOne(String id);

	void updateService(Part part);

	void deleteService(String id);

	List<Part> findMore(String keywords);

	Part findOneByP_Id(String parentId);

	List<Part> sonListToview(String parentId);
	
}

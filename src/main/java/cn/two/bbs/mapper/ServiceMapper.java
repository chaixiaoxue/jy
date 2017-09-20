package cn.two.bbs.mapper;

import java.util.List;

import cn.two.bbs.pojo.Part;

public interface ServiceMapper {

	void saveService(Part part);

	List<Part> findAll();

	Part findOne(String id);

	void updateService(Part part);

	void deleteService(String id);

	List<Part> findMore(String keywords);

	Part findOneByP_Id(String parentId);

	List<Part> sonListToview(String parentId);

}

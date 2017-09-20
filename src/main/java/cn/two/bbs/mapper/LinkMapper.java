package cn.two.bbs.mapper;

import java.util.List;


import cn.two.bbs.pojo.Part;

public interface LinkMapper {
	void saveLink(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateLink(Part part);

	void deleteLink(String id);
}

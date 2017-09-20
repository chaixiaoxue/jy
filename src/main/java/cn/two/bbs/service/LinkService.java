package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Part;

public interface LinkService {
	void saveLink(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateLink(Part part);

	void deleteLink(String id);
}

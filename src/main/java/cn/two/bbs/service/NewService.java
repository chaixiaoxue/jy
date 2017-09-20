package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Part;

public interface NewService {
	void saveNew(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateNew(Part part);

	void deleteNew(String id);

	void savenews(Part part);

	List<Part> fandAllNews(String[] p);

	Part findOneNews(String id);

	void updateNews(Part part);
}

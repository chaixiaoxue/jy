package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Part;

public interface CaseService {

	List<Part> fandAll();

	Part findOne(String id);

	void updateCase(Part part);

	void deleteCase(String id);

	void saveCase(Part part);

	List<Part> fandAllImg();
}

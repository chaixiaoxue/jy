package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Part;

public interface CompanyService {
	void saveCompany(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateCompany(Part part);

	void deleteCompany(String id);
}

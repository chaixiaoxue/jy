package cn.two.bbs.mapper;

import java.util.List;


import cn.two.bbs.pojo.Part;

public interface CompanyMapper {
	void saveCompany(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateCompany(Part part);

	void deleteCompany(String id);
}

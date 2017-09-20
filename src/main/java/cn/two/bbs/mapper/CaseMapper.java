package cn.two.bbs.mapper;

import java.util.List;


import cn.two.bbs.pojo.Part;

public interface CaseMapper {
	void saveCase(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateCase(Part part);

	void deleteCase(String id);

	List<Part> fandAllImg();
}

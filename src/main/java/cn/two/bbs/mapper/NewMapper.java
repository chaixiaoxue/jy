package cn.two.bbs.mapper;

import java.util.List;




import cn.two.bbs.pojo.Part;

public interface NewMapper {
	void saveNew(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateNew(Part part);

	void deleteNew(String id);

	void savenews(Part part);

	List<Part> fandAllNews(String[] p);

	Part toviewnews(String id);
}

package cn.two.bbs.mapper;

import java.util.List;



import cn.two.bbs.pojo.CV;
import cn.two.bbs.pojo.Part;

public interface TalentMapper {
	void saveTalent(Part part);

	List<Part> fandAll();

	Part findOne(String id);

	void updateTalent(Part part);

	void deleteTalent(String id);

	void saveCv(CV cv);

	List<CV> fandAllCv();

	CV findOneCv(String id);

	void updateCv(CV cv);

	void deletecv(String id);

	List<CV> findMore(String keywords);
}

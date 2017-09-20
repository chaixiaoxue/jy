package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.CV;
import cn.two.bbs.pojo.Part;

public interface TalentService {
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

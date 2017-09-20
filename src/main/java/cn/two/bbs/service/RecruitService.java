package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Apply;
import cn.two.bbs.pojo.Recruit;

public interface RecruitService {

	List<Recruit> findAll();

	Recruit findOne(String id);

	void update(Recruit recruit);

	void delete(String id);

	void saveRecruit(Recruit recruit);

	List<Apply> findAllApply();

	List<Apply> findAllApplyB_P(String parentId);

	void deleteapplyPerson(String id);

	void deleteapply(String parentId);

	void saveApply(Apply apply);

	List<Recruit> findrecruits(String title);

	List<String> findAllTitle();

}

package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Img;
import cn.two.bbs.pojo.Part;

public interface ImageService {

	List<Part> findAll();

	void saveImg(Img prod);

	List<Img> findAllImg();

	List<Img> findAllImgBP(String parentId);

	List<Img> findAllImgBP_F(String id);

	void deleteImg(String id);

	void updateImg(Img img);

	Img findOne(String id);

}

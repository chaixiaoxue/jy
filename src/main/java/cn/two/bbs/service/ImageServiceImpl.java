package cn.two.bbs.service;

import java.util.Date;
import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.ImageMapper;
import cn.two.bbs.pojo.Img;
import cn.two.bbs.pojo.Part;

@Service
public class ImageServiceImpl implements ImageService{
	@Resource
	private ImageMapper imageMapper;
	@Override
	public List<Part> findAll() {
		// TODO Auto-generated method stub
		return imageMapper.findAll();
	}
	@Override
	public void saveImg(Img prod) {
		// TODO Auto-generated method stub
		prod.setId(UUID.randomUUID().toString());
		prod.setSubTime(new java.sql.Timestamp(new Date().getTime()));
		prod.setIscross(1);
		imageMapper.saveImg(prod);
	}
	@Override
	public List<Img> findAllImg() {
		// TODO Auto-generated method stub
		return imageMapper.findAllImg();
	}
	@Override
	public List<Img> findAllImgBP(String parentId) {
		// TODO Auto-generated method stub
		return imageMapper.findAllImgBP(parentId);
	}
	@Override
	public List<Img> findAllImgBP_F(String id) {
		// TODO Auto-generated method stub
		return imageMapper.findAllImgBP_F(id);
	}
	@Override
	public void deleteImg(String id) {
		// TODO Auto-generated method stub
		imageMapper.deleteImg(id);
	}
	@Override
	public void updateImg(Img img) {
		// TODO Auto-generated method stub
		imageMapper.updateImg(img);
	}
	@Override
	public Img findOne(String id) {
		// TODO Auto-generated method stub
		return imageMapper.findOne(id);
	}

}

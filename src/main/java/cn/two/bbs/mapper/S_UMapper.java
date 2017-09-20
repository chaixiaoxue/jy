package cn.two.bbs.mapper;

import org.apache.ibatis.annotations.Delete;
import org.apache.ibatis.annotations.Insert;
import org.apache.ibatis.annotations.Param;

public interface S_UMapper {

	@Insert("insert into section_user_p values(#{managerId},#{sectionId})")
	void save(@Param("sectionId")String sectionId, @Param("managerId")String managerId);
	@Delete("delete from section_user_p where section_id=#{sectionId}")
	void deleteS_UBySid(String sectionId);
	@Delete("delete from section_user_p where user_id=#{userId}")
	void deleteS_UByUid(String userId);
	

}

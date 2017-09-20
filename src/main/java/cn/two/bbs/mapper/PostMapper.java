package cn.two.bbs.mapper;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;
import org.apache.ibatis.annotations.Select;

import cn.two.bbs.pojo.Post;
import cn.two.bbs.pojo.PostReply;

public interface PostMapper {
	public List<Post> findAll();
	
	public void deletePost(String[] postId);

	public void deleteP_R(String[] postId);

	public void updatecream(@Param("postId")String[] postId,@Param("iscream")String iscream);

	public void updatetop(@Param("postId")String[] postId, @Param("istop")String istop);

	public void updateSection(@Param("postId")String[] postId, @Param("sectionId")String sectionId);

	public Post findOne(String postId);

	public List<Post> findMore(String keywords);
	
	public List<Post> findPostByState();

	public void updateState(@Param("postId")String postId, @Param("state")int state);

	public List<PostReply> findReply(String replyId);

	public List<PostReply> findReplyForC(String replyId);
	
	public List<Post> findPostsBySectionId(String sectionId);

	public List<Post> findPostsByUserId(String userId);

	public void savePost(Post post);

	public void saveReply(PostReply reply);

	public List<Map<String, String>> findPostsReplyByUserId(String userId);

	public void savePostReply(PostReply postReply);
}

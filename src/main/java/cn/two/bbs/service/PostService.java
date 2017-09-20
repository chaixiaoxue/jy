package cn.two.bbs.service;

import java.util.List;

import cn.two.bbs.pojo.Post;
import cn.two.bbs.pojo.PostReply;

public interface PostService {
	
	public List<Post> findAll();

	public void deletePost(String[] postId);

	public void updatecream(String[] postId,String iscream);

	public void updatetop(String[] postId, String istop);

	public void updateSection(String[] postId, String sectionId);

	public Post findOne(String postId);

	public List<Post> findMore(String keywords);


	public List<Post> findPostsByState();

	public void updateState(String postId);

	public List<PostReply> findReply(String replyId);

	public List<Post> findPostsBySectionId(String sectionId);

	public List<Post> findPostsByUserId(String userId);
	

	public List<Post> findPostsReplyByUserId(String userId);

	public void savePost(Post post);

	public void saveReply(PostReply reply);

	public void savePostReply(PostReply postReply);
}

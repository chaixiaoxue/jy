package cn.two.bbs.service;

import java.sql.Date;
import java.util.ArrayList;
import java.util.Calendar;
import java.util.List;
import java.util.Map;
import java.util.UUID;

import javax.annotation.Resource;

import org.springframework.stereotype.Service;

import cn.two.bbs.mapper.LevelMapper;
import cn.two.bbs.mapper.PostMapper;
import cn.two.bbs.mapper.UserMapper;
import cn.two.bbs.pojo.Post;
import cn.two.bbs.pojo.PostReply;
import cn.two.bbs.pojo.User;
@Service
public class PostServiceImpl implements PostService{
	@Resource
	private PostMapper postMapper;
	@Resource
	private UserMapper userMapper;
	@Resource
	private LevelMapper levelMapper;
	public List<Post> findAll() {
		return postMapper.findAll();
	}
	public void deletePost(String[] postId) {
		//鍒犻櫎甯栧瓙琛�
		postMapper.deletePost(postId);
		//鍒犻櫎甯栧瓙鍥炲琛ㄤ腑鐩稿叧鐨勫唴瀹�
		postMapper.deleteP_R(postId);

		//鍒犻櫎鏉垮潡琛ㄤ腑甯栧瓙鐨勪俊鎭�
		
		//鍒犻櫎鐢ㄦ埛涓笘瀛愮殑淇℃伅
	}
	public void updatecream(String[] postId,String iscream) {
		postMapper.updatecream(postId,iscream);
	}
	public void updatetop(String[] postId, String istop) {
		postMapper.updatetop(postId,istop);
	}
	public void updateSection(String[] postId, String sectionId) {
		postMapper.updateSection(postId,sectionId);
	}
	public Post findOne(String postId) {
		Post post = postMapper.findOne(postId);
		List<PostReply> rList = post.getrList();
		for (PostReply r : rList) {
			List<PostReply> r2List = findReply(r.getReplyId());
			r.setrList(r2List);
		}
		post.setrList(rList);
		return post;
	}
	
	public List<Post> findMore(String keywords) {
		keywords="%"+keywords+"%";
		return postMapper.findMore(keywords);
	}
	
	public List<Post> findPostsByState() {
		return postMapper.findPostByState();
	}
	public void updateState(String postId) {
		int state=1;
		postMapper.updateState(postId,state);
	}
	

	public List<PostReply> findReply(String replyId) {
		List<PostReply> rList = postMapper.findReply(replyId);
		
		return rList;
	}
	public List<Post> findPostsBySectionId(String sectionId) {
		
		return postMapper.findPostsBySectionId(sectionId);
	}
	public List<Post> findPostsByUserId(String userId) {
		
		return postMapper.findPostsByUserId(userId);
	}
	public List<Post> findPostsReplyByUserId(String userId) {
		List<String> idlist=new ArrayList<String>();
		List<Post> postList=new ArrayList<Post>();
		
		List<Map<String,String>> map=postMapper.findPostsReplyByUserId(userId);
		for (Map<String, String> map2 : map) {
			for(Map.Entry<String,String> m:map2.entrySet()){
				if(idlist.size()>0){
					 if(!idlist.contains(m.getValue())){
						 if(m.getValue()!=null&&m.getValue()!=""){
							idlist.add(m.getValue());
						 }
					 }
					continue;
				}
				if(m.getValue()!=null&&m.getValue()!=""){
					idlist.add(m.getValue());
				}
			}
		}
		for(String id:idlist){
			Post post=postMapper.findOne(id);
			System.out.println(post);
			if(post!=null){
				postList.add(post);
			}
		}
		 return postList;
	}
	public void savePost(Post post) {
		post.setPostId(UUID.randomUUID().toString());
		post.setCreateTime(new Date(Calendar.getInstance().getTimeInMillis()));
		//post.setUpdateTime(new Date(Calendar.getInstance().getTimeInMillis()));
		post.setState(1);
		post.setCream(0);
		post.setTop(0);
		postMapper.savePost(post);
		User user = userMapper.findOne(post.getUserId());
		//userMapper.updateExp(post.getUserId(),user.getExp()+100);
		//userMapper.updateLevel(post.getUserId(), levelMapper.getLevel(user.getExp()+100));
	}
	public void saveReply(PostReply reply) {
		reply.setReplyId(UUID.randomUUID().toString());
		reply.setCreateTime(new Date(Calendar.getInstance().getTimeInMillis()));
		postMapper.saveReply(reply);
		
	}
	public void savePostReply(PostReply postReply) {
		postReply.setReplyId(UUID.randomUUID().toString());
		postReply.setCreateTime(new Date(Calendar.getInstance().getTimeInMillis()));
		//postReply.setUpdateTime(new Date(Calendar.getInstance().getTimeInMillis()));
		postMapper.savePostReply(postReply);
		User user = userMapper.findOne(postReply.getUser().getUserId());
		//userMapper.updateExp(postReply.getUser().getUserId(),user.getExp()+20);
		//userMapper.updateLevel(postReply.getUser().getUserId(), levelMapper.getLevel(user.getExp()+100));
	}
	
		
}

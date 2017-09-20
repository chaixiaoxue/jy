package cn.two.bbs.pojo;

import java.util.List;

/**
 *帖子回复表 
 */
public class PostReply extends BaseEntity{
	private String replyId;//回复表id
	private String postId;//回复的帖子id
	private String parentId;
	private String replyContent;//回复内容
	private List<PostReply> rList;//回复 回复的列表
	
	private User user;//用户
	
	
	
	
	public List<PostReply> getrList() {
		return rList;
	}
	public void setrList(List<PostReply> rList) {
		this.rList = rList;
	}
	public String getReplyId() {
		return replyId;
	}
	public void setReplyId(String replyId) {
		this.replyId = replyId;
	}
	
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	public String getReplyContent() {
		return replyContent;
	}
	public void setReplyContent(String replyContent) {
		this.replyContent = replyContent;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	@Override
	public String toString() {
		return "PostReply [replyId=" + replyId + ", postId=" + postId + ", parentId=" + parentId + ", replyContent="
				+ replyContent + ", rList=" + rList + ", user=" + user + "]";
	}
	
	
}

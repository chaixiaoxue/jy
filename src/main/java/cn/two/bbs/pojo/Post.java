package cn.two.bbs.pojo;

import java.util.Date;
import java.util.List;
/**
 *帖子模块 
 */
public class Post extends BaseEntity{
	private String postId;//帖子id
	private String postName;
	private String userId;//用户id
	private String sectionId;//板块id
	private String postContent;//帖子内容
	private Integer state;//帖子状态   0未通过   1通过
	private Date passedTime;//通过时间
	private Integer orderNo;//帖子排序号
	private Integer cream;//是否精华
	private Integer top;//是否置顶
	private Integer count;//发帖数
	
	private User user;//一对一关联
	private Section section;//一对一关联
	
	private List<PostReply> rList;//一对多
	
	
	
	
	public Integer getCount() {
		return count;
	}
	public void setCount(Integer count) {
		this.count = count;
	}
	public String getPostId() {
		return postId;
	}
	public void setPostId(String postId) {
		this.postId = postId;
	}
	
	public String getPostName() {
		return postName;
	}
	public void setPostName(String postName) {
		this.postName = postName;
	}
	public String getUserId() {
		return userId;
	}
	public void setUserId(String userId) {
		this.userId = userId;
	}
	
	public String getSectionId() {
		return sectionId;
	}
	public void setSectionId(String sectionId) {
		this.sectionId = sectionId;
	}
	public String getPostContent() {
		return postContent;
	}
	public void setPostContent(String postContent) {
		this.postContent = postContent;
	}
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public Date getPassedTime() {
		return passedTime;
	}
	public void setPassedTime(Date passedTime) {
		this.passedTime = passedTime;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	public Integer getCream() {
		return cream;
	}
	public void setCream(Integer cream) {
		this.cream = cream;
	}
	public Integer getTop() {
		return top;
	}
	public void setTop(Integer top) {
		this.top = top;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	public Section getSection() {
		return section;
	}
	public void setSection(Section section) {
		this.section = section;
	}
	
	
	public List<PostReply> getrList() {
		return rList;
	}
	public void setrList(List<PostReply> rList) {
		this.rList = rList;
	}
	@Override
	public String toString() {
		return "Post [postId=" + postId + ", userId=" + userId + ", sectionId=" + sectionId + ", postContent="
				+ postContent + ", state=" + state + ", passedTime=" + passedTime + ", orderNo=" + orderNo + ", cream="
				+ cream + ", top=" + top + ", user=" + user + ", section=" + section + "]";
	}
	
	
}

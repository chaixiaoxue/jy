package cn.two.bbs.pojo;

public class Reply extends BaseEntity{
	private String id;
	private String parentId;
	private String content;
	@Override
	public String toString() {
		return "Reply [id=" + id + ", parentId=" + parentId + ", content=" + content + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	
}

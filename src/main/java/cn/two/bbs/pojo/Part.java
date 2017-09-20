package cn.two.bbs.pojo;

public class Part extends BaseEntity{
	private String id;
	private String title;
	private String parentId;
	private String content;
	private String orderNo;
	
	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getTitle() {
		return title;
	}

	public void setTitle(String title) {
		this.title = title;
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

	public String getOrderNo() {
		return orderNo;
	}

	public void setOrderNo(String orderNo) {
		this.orderNo = orderNo;
	}

	@Override
	public String toString() {
		return "Part [id=" + id + ", title=" + title + ", parentId=" + parentId + ", content=" + content + ", orderNo="
				+ orderNo + "]";
	}

}

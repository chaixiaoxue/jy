package cn.two.bbs.pojo;

import java.util.List;

/**
 *帖子类别表 
 */
public class Section extends BaseEntity{
	private String sectionId;//类别id
	private String sectionName;//类别名称
	private String remark;
	private Integer state;
	private Integer orderNo;
	
	private List<User> managerList;//每个版的版主
	
	
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public List<User> getManagerList() {
		return managerList;
	}
	public void setManagerList(List<User> managerList) {
		this.managerList = managerList;
	}
	public String getSectionId() {
		return sectionId;
	}
	public void setSectionId(String sectionId) {
		this.sectionId = sectionId;
	}
	public String getSectionName() {
		return sectionName;
	}
	public void setSectionName(String sectionName) {
		this.sectionName = sectionName;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	@Override
	public String toString() {
		return "Section [sectionId=" + sectionId + ", sectionName=" + sectionName + ", remark=" + remark + ", state="
				+ state + ", orderNo=" + orderNo + ", managerList=" + managerList + "]";
	}
	
}

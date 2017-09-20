package cn.two.bbs.pojo;
/**
 *角色表 
 */
public class Group extends BaseEntity{
	private String groupId;//组id
	private String groupName;//组名称
	private String remark;//备注信息
	private Integer orderNo;//排序号
	private Integer state;
	
	
	public Integer getState() {
		return state;
	}
	public void setState(Integer state) {
		this.state = state;
	}
	public String getGroupId() {
		return groupId;
	}
	public void setGroupId(String groupId) {
		this.groupId = groupId;
	}
	public String getGroupName() {
		return groupName;
	}
	public void setGroupName(String groupName) {
		this.groupName = groupName;
	}
	public String getRemark() {
		return remark;
	}
	public void setRemark(String remark) {
		this.remark = remark;
	}
	public Integer getOrderNo() {
		return orderNo;
	}
	public void setOrderNo(Integer orderNo) {
		this.orderNo = orderNo;
	}
	@Override
	public String toString() {
		
		return super.toString()+"Group [groupId=" + groupId + ", groupName=" + groupName + ", remark=" + remark + ", orderNo=" + orderNo
				+ ", state=" + state + "]";
	}
	
}

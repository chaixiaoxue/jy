package cn.two.bbs.pojo;

import java.util.Date;

public class Img {
	private String id;
	private String address;
	private String parentId;
	private String subperson;
	private Date subTime;
	private String orderno;
	private Integer iscross;
	public String getOrderno() {
		return orderno;
	}
	public void setOrderno(String orderno) {
		this.orderno = orderno;
	}
	public Integer getIscross() {
		return iscross;
	}
	public void setIscross(Integer iscross) {
		this.iscross = iscross;
	}
	@Override
	public String toString() {
		return "Img [id=" + id + ", address=" + address + ", parentId=" + parentId + ", subperson=" + subperson
				+ ", subTime=" + subTime + ", orderno=" + orderno + ", iscross=" + iscross + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getParentId() {
		return parentId;
	}
	public void setParentId(String parentId) {
		this.parentId = parentId;
	}
	public String getSubperson() {
		return subperson;
	}
	public void setSubperson(String subperson) {
		this.subperson = subperson;
	}
	public Date getSubTime() {
		return subTime;
	}
	public void setSubTime(Date subTime) {
		this.subTime = subTime;
	}
	
	
}

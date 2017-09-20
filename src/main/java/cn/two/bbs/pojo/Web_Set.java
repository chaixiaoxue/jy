package cn.two.bbs.pojo;

public class Web_Set extends BaseEntity {
	private String id ;
	private String title;
	private String description;
	private String webAddress;
	private String comAddress;
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
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
	public String getWebAddress() {
		return webAddress;
	}
	public void setWebAddress(String webAddress) {
		this.webAddress = webAddress;
	}
	public String getComAddress() {
		return comAddress;
	}
	public void setComAddress(String comAddress) {
		this.comAddress = comAddress;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getFax() {
		return fax;
	}
	public void setFax(String fax) {
		this.fax = fax;
	}
	public String getAfterSale() {
		return afterSale;
	}
	public void setAfterSale(String afterSale) {
		this.afterSale = afterSale;
	}
	public String getQq1() {
		return qq1;
	}
	public void setQq1(String qq1) {
		this.qq1 = qq1;
	}
	public String getQq2() {
		return qq2;
	}
	public void setQq2(String qq2) {
		this.qq2 = qq2;
	}
	public String getQq3() {
		return qq3;
	}
	public void setQq3(String qq3) {
		this.qq3 = qq3;
	}
	public String getQq4() {
		return qq4;
	}
	public void setQq4(String qq4) {
		this.qq4 = qq4;
	}
	public String getCopyrightInformation() {
		return copyrightInformation;
	}
	public void setCopyrightInformation(String copyrightInformation) {
		this.copyrightInformation = copyrightInformation;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	@Override
	public String toString() {
		return "Web_Set [id=" + id + ", title=" + title + ", description=" + description + ", webAddress=" + webAddress
				+ ", comAddress=" + comAddress + ", phone=" + phone + ", fax=" + fax + ", afterSale=" + afterSale
				+ ", qq1=" + qq1 + ", qq2=" + qq2 + ", qq3=" + qq3 + ", qq4=" + qq4 + ", copyrightInformation="
				+ copyrightInformation + ", email=" + email + "]";
	}
	private String phone;
	private String fax;
	private String afterSale;
	private String qq1;
	private String qq2;
	private String qq3; 
	private String qq4;
	private String copyrightInformation;
	private String email;
}

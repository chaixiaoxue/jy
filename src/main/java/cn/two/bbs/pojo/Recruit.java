package cn.two.bbs.pojo;

public class Recruit extends BaseEntity{
	private String id;
	private String title;
	private String recruiting;//招聘对象
	private String num;//招聘人数
	private String money;//招聘薪水
	private String requireddate;
	@Override
	public String toString() {
		return "Recruit [id=" + id + ", title=" + title + ", recruiting=" + recruiting + ", num=" + num + ", money="
				+ money + ", requireddate=" + requireddate + ", content=" + content + "]";
	}
	public String getRequireddate() {
		return requireddate;
	}
	public void setRequireddate(String requireddate) {
		this.requireddate = requireddate;
	}
	private String content;
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
	public String getRecruiting() {
		return recruiting;
	}
	public void setRecruiting(String recruiting) {
		this.recruiting = recruiting;
	}
	public String getNum() {
		return num;
	}
	public void setNum(String num) {
		this.num = num;
	}
	public String getMoney() {
		return money;
	}
	public void setMoney(String money) {
		this.money = money;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	
	

}

package cn.two.bbs.pojo;

public class CV extends BaseEntity{
	private String id;
	private String name;
	private Integer sex;
	private String age;
	private String industry;
	private String position;
	private Double money;
	private String address;
	private String phone;
	private String qq;
	private String email;
	private String workingexperience;
	private String educationexperience;
	private String skillsexpertise;
	@Override
	public String toString() {
		return "CV [id=" + id + ", name=" + name + ", sex=" + sex + ", age="
				+ age + ", industry=" + industry + ", position=" + position
				+ ", money=" + money + ", address=" + address + ", phone="
				+ phone + ", qq=" + qq + ", email=" + email
				+ ", workingexperience=" + workingexperience
				+ ", educationexperience=" + educationexperience
				+ ", skillsexpertise=" + skillsexpertise + "]";
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public Integer getSex() {
		return sex;
	}
	public void setSex(Integer sex) {
		this.sex = sex;
	}
	public String getAge() {
		return age;
	}
	public void setAge(String age) {
		this.age = age;
	}
	public String getIndustry() {
		return industry;
	}
	public void setIndustry(String industry) {
		this.industry = industry;
	}
	public String getPosition() {
		return position;
	}
	public void setPosition(String position) {
		this.position = position;
	}
	public Double getMoney() {
		return money;
	}
	public void setMoney(Double money) {
		this.money = money;
	}
	public String getAddress() {
		return address;
	}
	public void setAddress(String address) {
		this.address = address;
	}
	public String getPhone() {
		return phone;
	}
	public void setPhone(String phone) {
		this.phone = phone;
	}
	public String getQq() {
		return qq;
	}
	public void setQq(String qq) {
		this.qq = qq;
	}
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public String getWorkingexperience() {
		return workingexperience;
	}
	public void setWorkingexperience(String workingexperience) {
		this.workingexperience = workingexperience;
	}
	public String getEducationexperience() {
		return educationexperience;
	}
	public void setEducationexperience(String educationexperience) {
		this.educationexperience = educationexperience;
	}
	public String getSkillsexpertise() {
		return skillsexpertise;
	}
	public void setSkillsexpertise(String skillsexpertise) {
		this.skillsexpertise = skillsexpertise;
	}
	
	
}

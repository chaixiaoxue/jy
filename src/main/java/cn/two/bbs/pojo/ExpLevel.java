package cn.two.bbs.pojo;
/**
 *经验等级表 
 */
public class ExpLevel extends BaseEntity{
	private String levelId;//等级id
	private String levelName;//等级名称
	private Integer experience;//经验值
	public String getLevelId() {
		return levelId;
	}
	public void setLevelId(String levelId) {
		this.levelId = levelId;
	}
	public String getLevelName() {
		return levelName;
	}
	public void setLevelName(String levelName) {
		this.levelName = levelName;
	}
	public Integer getExperience() {
		return experience;
	}
	public void setExperience(Integer experience) {
		this.experience = experience;
	}
	@Override
	public String toString() {
		return "Exp [levelId=" + levelId + ", levelName=" + levelName + ", experience=" + experience + "]";
	}
	
}

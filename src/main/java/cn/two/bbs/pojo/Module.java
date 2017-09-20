package cn.two.bbs.pojo;
/**
 *模块表 
 */
public class Module extends BaseEntity{
	private String moduleId;
	private String moduleName;
	private Module module;//关联上级模块
	
	public String getModuleId() {
		return moduleId;
	}
	public void setModuleId(String moduleId) {
		this.moduleId = moduleId;
	}
	public String getModuleName() {
		return moduleName;
	}
	public void setModuleName(String moduleName) {
		this.moduleName = moduleName;
	}
	public Module getModule() {
		return module;
	}
	public void setModule(Module module) {
		this.module = module;
	}
	@Override
	public String toString() {
		return "Module [moduleId=" + moduleId + ", moduleName=" + moduleName + ", module=" + module + "]";
	}
	
}

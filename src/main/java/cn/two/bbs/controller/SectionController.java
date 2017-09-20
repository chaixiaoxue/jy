package cn.two.bbs.controller;

import java.io.IOException;
import java.util.Iterator;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.two.bbs.pojo.Section;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.SectionService;
import cn.two.bbs.service.UserService;
import sun.print.resources.serviceui_zh_HK;

@Controller
@RequestMapping("/section/")
public class SectionController extends BaseController {

	@Resource
	private SectionService sectionService;
	@Resource
	private UserService userService;
	// 首页
	@RequestMapping("list")
	public String list(Model model){
		List<Section> sectionList = sectionService.findAll();
		model.addAttribute("sectionList",sectionList);
		
		return "admin/section/sectionList";
	}
	
	// 添加
	@RequestMapping("tocreate")
	public String tocreate(Model model){
		
		List<User> userList = userService.findAll();
		model.addAttribute("userList",userList);
		return "admin/section/sectionCreate";
	}
	
	// 更新
	@RequestMapping("save")
	public String save(Section section, String[] managerIds,Model model){
		if(managerIds==null){
			model.addAttribute("tips", "没有选择版主");
			return "forward:/section/tocreate";
		}
		System.out.println(model);
		sectionService.saveSection(section,managerIds);
		
		return "redirect:/section/list";
	}

	
	// 修改
	@RequestMapping("toupdate")
	public String toupdate(String sectionId,Model model){
		
		Section section = sectionService.findOne(sectionId);
		List<User> userList = userService.findAll();
		
		
		for(User manager : section.getManagerList()){
			Iterator<User> iteratorUser = userList.iterator();
			while(iteratorUser.hasNext()){
				if(manager.getUserId().equals(iteratorUser.next().getUserId())){
					iteratorUser.remove();
				}
			}
		}
		model.addAttribute("section",section);
		model.addAttribute("userList",userList);
		
		return "admin/section/sectionUpdate";
	}
	// 更新
	@RequestMapping("update")
	public String update(Section section,String[] managerIds){
		for (String string : managerIds) {
			System.out.println(string);
		}
		System.out.println(section);
		sectionService.updateSection(section,managerIds);
		return "redirect:/section/list";
	}
	
	@RequestMapping("stop")
	public String stop(String[] sectionId){
		Integer state = 0;
		sectionService.updateState(sectionId,state);
		return "redirect:/section/list";
	}
	@RequestMapping("start")
	public String start(String[] sectionId,Model model){
		Integer state = 1;
		sectionService.updateState(sectionId,state);
		
		return "redirect:/section/list";
	}
	
	// 删除
	@RequestMapping("delete")
	public String delete(String[] sectionId){
		sectionService.deleteSections(sectionId);
		for (String string : sectionId) {
			System.out.println(string);
		}
		return "redirect:/section/list";
	}
	
	// 搜索
	@RequestMapping("searchSectionByName")
	public String search(String sectionName,Model model){
		
		List<Section> sectionList = sectionService.findSectionByName(sectionName);
		
		model.addAttribute("sectionList",sectionList);
		
		return "admin/section/section_list";
	}
	
	// ajax
	@RequestMapping("ajax")
	public void ajax(HttpServletRequest request,HttpServletResponse response) throws IOException{
		
		String title = request.getParameter("title");
		
		response.setContentType("text/html;charset=utf-8");
		
		List<Section> sectionList = sectionService.findSectionByName(title);
		for (Section section : sectionList) {
			response.getWriter().write(section.getSectionName());
		}
		
		
	}
	
}

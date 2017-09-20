package cn.two.bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import cn.two.bbs.pojo.ExpLevel;
import cn.two.bbs.service.LevelService;

@Controller
@RequestMapping("/level/")
public class LevelController extends BaseController{
	
	@Resource
	private LevelService levelService;
	
	@RequestMapping("list")
	public String admin_list(Model model){
		List<ExpLevel> levelList=levelService.findAll();
		model.addAttribute("levelList",levelList);
		return "admin/level/levelList";
	}
	
	@RequestMapping("tocreate")
	public String tocreate(){
		return "admin/level/levelCreate";
	}
	
	@RequestMapping("add")
	public String toadd(ExpLevel level){
		System.out.println(level);
		levelService.save(level);
		return "redirect:/level/list";
	}
	
	@RequestMapping("delete")
	public String delete(@RequestParam("levelId") String[] levelIds){
		for (String string : levelIds) {
			System.out.println(string);
		}
		levelService.delete(levelIds);
		System.out.println(1111);
		return "redirect:/level/list";
	}
	
	@RequestMapping("toview")
	public String toview(String levelId,Model model){
		ExpLevel level=levelService.findOne(levelId);
		model.addAttribute("level",level);
		return "admin/level/levelView";
	}
	
	@RequestMapping("toupdate")
	public String toupdate(String levelId,Model model){
		ExpLevel level=levelService.findOne(levelId);
		model.addAttribute("level",level);
		return "admin/level/levelUpdate";
	}
	
	@RequestMapping("update")
	public String update(ExpLevel level){
		levelService.update(level);
		return "redirect:/level/list";
	}
	
	@RequestMapping("findLevelId")
	public void findLevelId(HttpServletRequest request,HttpServletResponse response){
		String levelId=request.getParameter("name");
		System.out.println(levelId);
		ExpLevel level=levelService.findOne(levelId);
		
		response.setContentType("text/json;charset=utf-8");
		if(level!=null){
			try {
				response.getWriter().write("true");
			} catch (IOException e) {
				e.printStackTrace();
			}
		}
	}
}
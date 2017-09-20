package cn.two.bbs.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.StringUtils;

import cn.two.bbs.pojo.Apply;
import cn.two.bbs.pojo.Recruit;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.RecruitService;

@Controller
@RequestMapping("/recruit/")
public class RecruitController extends BaseController {
	@Resource
	private RecruitService recruitService;
	@RequestMapping("list")
	public String list(Model model){
		List<Recruit> comList = recruitService.findAll();
		model.addAttribute("comList", comList);
		return "admin/recruit/recruitList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		Recruit part = recruitService.findOne(id);
		model.addAttribute("part", part);
		return "admin/recruit/recruitToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		Recruit part = recruitService.findOne(id);
		model.addAttribute("part", part);
		return "admin/recruit/recruitToupdate";
	}
	@RequestMapping("update")
	public String update(Recruit recruit,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(recruit.getTitle()) ) {
			return "redirect:/company/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		recruit.setUpdateBy(user.getUsername());
		recruitService.update(recruit);
		return "redirect:/recruit/list";
	}
	@RequestMapping("delete")
	public String delete(String id){
		recruitService.delete(id);
		return "redirect:/recruit/list";
	}
	@RequestMapping("create")
	public String create(){
		return "admin/recruit/recruitCreat";
	}
	@RequestMapping("save")
	public String save(Recruit recruit,HttpServletRequest request){
		
		if (StringUtils.isNullOrEmpty(recruit.getTitle()) ) {
			return "redirect:/recruit/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		recruit.setCreateBy(user.getUsername());
		
		recruitService.saveRecruit(recruit);
		return "redirect:/recruit/list";
	}
	@RequestMapping("applylist")
	public String applylist(Model model){
		List<Apply> comList = recruitService.findAllApply();
		model.addAttribute("comList", comList);
		List<Recruit> serList = recruitService.findAll();
		model.addAttribute("serList", serList);
		return "admin/recruit/applyList";
	}
	@RequestMapping("toviewapply")
	public String toviewapply(String parentId,Model model){
		System.out.println(parentId);
		List<Apply> comList = recruitService.findAllApplyB_P(parentId);
		for (Apply apply : comList) {
			
			System.out.println(apply);
		}
		model.addAttribute("comList", comList);
		return "admin/recruit/applysonList";
	}
	@RequestMapping("deleteappperson")
	public String applyPerson(String id){
		recruitService.deleteapplyPerson(id);
		return "redirect:/recruit/applylist";
	}
	@RequestMapping("deleteapply")
	public String deleteapply(String parentId){
		recruitService.deleteapply(parentId);
		return "redirect:/recruit/applylist";
	}
}

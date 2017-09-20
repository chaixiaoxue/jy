package cn.two.bbs.controller;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.http.HttpRequest;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.mysql.jdbc.StringUtils;

import cn.two.bbs.pojo.Part;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.CompanyService;
import cn.two.bbs.service.LinkService;

@Controller
@RequestMapping("/link/")
public class LinkController extends BaseController {
	@Resource
	private CompanyService companyService;
	@Resource
	private LinkService linkService;
	@RequestMapping("create")
	public String Create(){
		return "admin/link/linkCreat";
	}
	@RequestMapping("save")
	public String Save(Part part,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			return "redirect:/link/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		linkService.saveLink(part);
		return "redirect:/link/list";
	}
	@RequestMapping("list")
	public String list (Model model){
		List<Part> comList = linkService.fandAll();
		model.addAttribute("comList", comList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/link/linkList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		//System.out.println("haha");
		Part part = linkService.findOne(id);
		System.out.println(part);
		model.addAttribute("part", part);
		return "admin/link/linkToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		Part part = linkService.findOne(id);
		model.addAttribute("part", part);
		return "admin/link/linkToupdate";
	}
	@RequestMapping("update")
	public String update(Part part,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		System.out.println(part);
		linkService.updateLink(part);
		return "redirect:/link/list";
	}
	@RequestMapping("delete")
	public String delete (String id){
		linkService.deleteLink(id);
		return "redirect:/link/list";
	}
}

package cn.two.bbs.controller;

import java.util.ArrayList;
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
import com.sun.org.apache.xml.internal.resolver.helpers.PublicId;

import cn.two.bbs.pojo.Part;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.CompanyService;
import cn.two.bbs.service.NewService;

@Controller
@RequestMapping("/new/")
public class NewController extends BaseController {
	@Resource
	private CompanyService companyService;
	@Resource
	private NewService newService;
	
	@RequestMapping("create")
	public String Create(){
		return "admin/new/newCreat";
	}
	@RequestMapping("save")
	public String Save(Part part,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			return "redirect:/new/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		newService.saveNew(part);
		return "redirect:/new/list";
	}
	@RequestMapping("list")
	public String list (Model model){
		List<Part> comList = newService.fandAll();
		model.addAttribute("comList", comList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/new/newList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		//System.out.println("haha");
		Part part = newService.findOne(id);
		System.out.println(part);
		model.addAttribute("part", part);
		return "admin/new/newToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		Part part = newService.findOne(id);
		model.addAttribute("part", part);
		return "admin/new/newToupdate";
	}
	@RequestMapping("update")
	public String update(Part part,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		newService.updateNew(part);
		return "redirect:/new/list";
	}
	@RequestMapping("delete")
	public String delete (String id){
		newService.deleteNew(id);
		return "redirect:/new/list";
	}
	@RequestMapping("newscreate")
	public String newscreate (Model model){
		List<Part> comList = newService.fandAll();
		model.addAttribute("comList", comList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/new/newsCreat";
	}
	
	@RequestMapping("savenews")
	public String savenews(Part part,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			return "redirect:/new/newsCreat";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		newService.savenews(part);
		return "redirect:/new/newslist";
	}
	@RequestMapping("newslist")
	public String newslist(Model model){
		List<Part> comList1 = newService.fandAll();
		String [] p = new String[comList1.size()];
		for (int i = 0; i < p.length; i++) {
			p[i] = comList1.get(i).getId();
		}
		List<Part> comList = newService.fandAllNews(p);
		model.addAttribute("comList", comList);
		return "admin/new/newsList";
 	}
	@RequestMapping("toviewnews")
	public String toviewnews(String id,Model model){
		Part part = newService.findOneNews(id);
		model.addAttribute("part", part);
		return "admin/new/newsToview";
	}
	@RequestMapping("toupdatenews")
	public String toupdatenews (String id,Model model){
		List<Part> comList = newService.fandAll();
		model.addAttribute("comList", comList);
		Part part = newService.findOneNews(id);
		System.out.println(part.getParentId());
		model.addAttribute("part", part);
		String name = part.getParentId();
		String parentId =null;
		for (Part part2 : comList) {
			if (part2.getTitle().equals(name)) {
				parentId = part2.getId();
			}
		}
		model.addAttribute("parentId", parentId);
		return "admin/new/newsToupdate";
	}
	@RequestMapping("updatenews")
	public String updatenews(Part part,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		newService.updateNews(part);
		return "redirect:/new/newslist";
	}
	@RequestMapping("deletenews")
	public String deletenews(String id){
		newService.deleteNew(id);
		return "redirect:/new/newslist";
	}
	
}

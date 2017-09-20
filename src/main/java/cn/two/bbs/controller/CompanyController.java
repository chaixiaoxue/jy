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

@Controller
@RequestMapping("/company/")
public class CompanyController extends BaseController {
	@Resource
	private CompanyService companyService;
	@RequestMapping("create")
	public String Create(){
		return "admin/company/CompanyCreat";
	}
	@RequestMapping("save")
	public String Save(Part part,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			return "redirect:/company/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		companyService.saveCompany(part);
		return "redirect:/company/list";
	}
	@RequestMapping("list")
	public String list (Model model){
		List<Part> comList = companyService.fandAll();
		model.addAttribute("comList", comList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/company/companyList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		//System.out.println("haha");
		Part part = companyService.findOne(id);
		System.out.println(part);
		model.addAttribute("part", part);
		return "admin/company/CompanyToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		Part part = companyService.findOne(id);
		model.addAttribute("part", part);
		return "admin/company/CompanyToupdate";
	}
	@RequestMapping("update")
	public String update(Part part,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		companyService.updateCompany(part);
		return "redirect:/company/list";
	}
	@RequestMapping("delete")
	public String delete (String id){
		companyService.deleteCompany(id);
		return "redirect:/company/list";
	}
}

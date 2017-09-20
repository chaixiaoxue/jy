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
import cn.two.bbs.service.CaseService;
import cn.two.bbs.service.CompanyService;

@Controller
@RequestMapping("/case/")
public class CaseController extends BaseController {
	@Resource
	private CompanyService companyService;
	@Resource
	private CaseService caseService;
	@RequestMapping("create")
	public String Create(){
		return "admin/case/caseCreat";
	}
	@RequestMapping("save")
	public String Save(Part part,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			return "redirect:/case/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		caseService.saveCase(part);
		return "redirect:/case/list";
	}
	@RequestMapping("list")
	public String list (Model model){
		List<Part> comList = caseService.fandAll();
		model.addAttribute("comList", comList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/case/caseList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		//System.out.println("haha");
		Part part = caseService.findOne(id);
		System.out.println(part);
		model.addAttribute("part", part);
		return "admin/case/caseToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		System.out.println("123");

		Part part = caseService.findOne(id);
		model.addAttribute("part", part);
		return "admin/case/caseToupdate";
	}
	@RequestMapping("update")
	public String update(Part part,HttpServletRequest request){
		//System.out.println("123");
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		//System.out.println(part);
		caseService.updateCase(part);
		return "redirect:/case/list";
	}
	@RequestMapping("delete")
	public String delete (String id){
		caseService.deleteCase(id);
		return "redirect:/case/list";
	}
}

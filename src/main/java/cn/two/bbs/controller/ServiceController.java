package cn.two.bbs.controller;

import java.util.List;
import java.util.UUID;

import javax.annotation.Resource;
import javax.jws.WebParam.Mode;
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
import cn.two.bbs.service.ServiceService;

@Controller
@RequestMapping("/service/")
public class ServiceController extends BaseController {
	@Resource
	private ServiceService serviceService;
	@Resource
	private CompanyService companyService;
	@RequestMapping("create")
	public String Create(Model model){
		List<Part> serList = serviceService.findAll();
		model.addAttribute("serList", serList);
		return "admin/service/serviceCreat";
	}
	@RequestMapping("save")
	public String Save(Part part,HttpServletRequest request){
		//System.out.println(part.getTitle());
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			//System.out.println(1);
			return "redirect:/service/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		serviceService.saveService(part);
		return "redirect:/service/list";
	}
	@RequestMapping("list")
	public String list (Model model){
		List<Part> serList = serviceService.findAll();
		model.addAttribute("serList", serList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/service/serviceList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		//System.out.println("haha");
		Part part = serviceService.findOne(id);
		System.out.println(part);
		model.addAttribute("part", part);
		return "admin/service/serviceToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		Part part = serviceService.findOne(id);
		model.addAttribute("part", part);
		return "admin/service/serviceToupdate";
	}
	@RequestMapping("update")
	public String update(Part part,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		serviceService.updateService(part);
		return "redirect:/service/list";
	}
	@RequestMapping("delete")
	public String delete (String id){
		serviceService.deleteService(id);
		return "redirect:/service/list";
	}
	@RequestMapping("findMore")
	public String findMore(String keywords,Model model){
		List<Part> serList = serviceService.findMore(keywords);
		model.addAttribute("serList", serList);
		return "admin/service/serviceList";
	}
	@RequestMapping("sonlist")
	public String sonList(Model model){
		List<Part> serList = serviceService.findAll();
		model.addAttribute("serList", serList);
		return "admin/service/sonList";
	}
	@RequestMapping("sonListToview")
	public String sonListToview (String parentId,Model model){
		Part part = serviceService.findOneByP_Id(parentId);
		List<Part> sonList = serviceService.sonListToview(parentId);
		List<Part> serList = serviceService.findAll();
		model.addAttribute("serList", serList);
		model.addAttribute("part", part);
		model.addAttribute("sonList", sonList);
		return "admin/service/sonList";
	}
	
}

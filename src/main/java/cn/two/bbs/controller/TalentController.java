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

import cn.two.bbs.pojo.CV;
import cn.two.bbs.pojo.Part;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.CompanyService;
import cn.two.bbs.service.TalentService;

@Controller
@RequestMapping("/talent/")
public class TalentController extends BaseController {
	@Resource
	private TalentService talentService;
	@Resource
	private CompanyService companyService;
	@RequestMapping("create")
	public String Create(){
		return "admin/talent/talentCreat";
	}
	@RequestMapping("save")
	public String Save(Part part,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(part.getTitle()) ) {
			return "redirect:/talent/create";
		}
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setCreateBy(user.getUsername());
		talentService.saveTalent(part);
		return "redirect:/talent/list";
	}
	@RequestMapping("list")
	public String list (Model model){
		List<Part> comList = talentService.fandAll();
		model.addAttribute("comList", comList);
		/*for (Part part : comList) {
			System.out.println(part);
		}*/
		return "admin/talent/talentList";
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		//System.out.println("haha");
		Part part = talentService.findOne(id);
		//System.out.println(part);
		model.addAttribute("part", part);
		return "admin/talent/talentToview";
	}
	@RequestMapping("toupdate")
	public String toupdate(String id,Model model){
		Part part = talentService.findOne(id);
		model.addAttribute("part", part);
		return "admin/talent/talentToupdate";
	}
	@RequestMapping("update")
	public String update(Part part,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		part.setUpdateBy(user.getUsername());
		talentService.updateTalent(part);
		return "redirect:/talent/list";
	}
	@RequestMapping("delete")
	public String delete (String id){
		talentService.deleteTalent(id);
		return "redirect:/talent/list";
	}
	@RequestMapping("cvcreate")
	public String cvCreate(Model model){
		List<Part> comList = talentService.fandAll();
		model.addAttribute("comList", comList);
		return "admin/talent/cvCreat";
	}
	@RequestMapping("cvsave")
	public String cvSave(CV cv){
		if (StringUtils.isNullOrEmpty(cv.getName()) ) {
			return "redirect:/talent/cvcreate";
		}
		talentService.saveCv(cv);
		return "redirect:/talent/cvlist";
	}
	@RequestMapping("cvlist")
	public String cvlist(Model model){
		List<CV> cList =  talentService.fandAllCv();
		
		model.addAttribute("cList", cList);
		return "admin/talent/cvList";
	}
	@RequestMapping("toviewcv")
	public String toviewcv (String id,Model model){
		CV cv = talentService.findOneCv(id);
		/*List<Part> comList = talentService.fandAll();
		model.addAttribute("comList", comList);*/
		model.addAttribute("cv",cv);
		return "admin/talent/cvToview";
	}
	@RequestMapping("toupdatecv")
	public String toupdatecv(String id,Model model){
		CV cv = talentService.findOneCv(id);
		List<Part> comList = talentService.fandAll();
		model.addAttribute("comList", comList);
		model.addAttribute("cv",cv);
		return "admin/talent/cvToupdate";
	}
	@RequestMapping("updateCv")
	public String updateCv(CV cv,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		cv.setUpdateBy(user.getUsername());
		talentService.updateCv(cv);
		return "redirect:/talent/cvlist";
	}
	@RequestMapping("deletecv")
	public String deletecv(String id){
		talentService.deletecv(id);
		return "redirect:/talent/cvlist";
	}
	@RequestMapping("findMore")
	public String findMore(String keywords,Model model){
		List<CV> cList = talentService.findMore(keywords);
		model.addAttribute("cList", cList);
		 return "admin/talent/cvList";
	}
}

package cn.two.bbs.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.*;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.shiro.web.session.HttpServletSession;
import org.omg.CORBA.PUBLIC_MEMBER;
import org.springframework.cglib.core.GeneratorStrategy;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.two.bbs.pojo.Img;
import cn.two.bbs.pojo.Part;
import cn.two.bbs.pojo.User;
import cn.two.bbs.pojo.Web_Set;
import cn.two.bbs.service.CaseService;
import cn.two.bbs.service.CompanyService;
import cn.two.bbs.service.ImageService;
import cn.two.bbs.service.LinkService;
import cn.two.bbs.service.NewService;
import cn.two.bbs.service.UserService;
import sun.launcher.resources.launcher;
@Controller

public class HomeController extends BaseController{
	
	@Resource
	private CompanyService companyService;
	@Resource
	private NewService newService;
	@Resource
	
	private CaseService caseService;
	@Resource
	private ImageService imageService;
	@Resource
	private LinkService linkService;
	@Resource
	private UserService userService;
	@RequestMapping("home")
	public String home(HttpServletRequest request){
		//String username = (String) request.getSession().getAttribute("username");
		return "index";
	}
	@RequestMapping("front")
	public String front(Model model){
		List<Part> comList= companyService.fandAll();
		model.addAttribute("comList", comList);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		String [] p = {"43"};
		List<Part> zhengce = newService.fandAllNews(p);
		for (Part part : zhengce) {
			part.setContent(getStr(part.getContent()));
		}
		model.addAttribute("new1", zhengce.get(0));
		model.addAttribute("new2", zhengce.get(1));
		model.addAttribute("new3", zhengce.get(2));
		model.addAttribute("new4", zhengce.get(3));
		model.addAttribute("new5", zhengce.get(4));
		model.addAttribute("new6", zhengce.get(5));
		//行业资讯
		String [] h = {"42"};
		List<Part> hangye = newService.fandAllNews(h);
		Part hangyeone = newService.findOne("42");
		model.addAttribute("hangyeone", hangyeone);
		for (Part part : hangye) {
			part.setContent(getStr(part.getContent()));
		}
		model.addAttribute("hang1", hangye.get(0));
		model.addAttribute("hang2", hangye.get(1));
		model.addAttribute("hang3", hangye.get(2));
		String [] g = {"41"};
		Part company = newService.findOne("41");
		model.addAttribute("company", company);
		List<Part> gongsi = newService.fandAllNews(g);
		for (Part part : gongsi) {
			part.setContent(getStr(part.getContent()));
		}
		/*for (Part part : gongsi) {
			System.out.println(part.getContent());
		}*/
		model.addAttribute("gs1", gongsi.get(0));
		model.addAttribute("gs2", gongsi.get(1));
		model.addAttribute("gs3", gongsi.get(2));
		//成功案例
		List<Part> cases = caseService.fandAllImg();
		List<Part> cases1 = new ArrayList<Part>();
		List<Part> cases2 = new ArrayList<Part>();
		for (int i = 0; i < 6; i++) {
			cases1.add(cases.get(i));
			
		}
		for (int i = 6; i < 12; i++) {
			cases2.add(cases.get(i));
			
		}
		model.addAttribute("cases1", cases1);
		model.addAttribute("cases2", cases2);
		//首页幻灯片
		List<Img> pptimg = imageService.findAllImgBP("1");
		model.addAttribute("pptimg", pptimg);
		//友情链接
		List<Part> links = linkService.fandAll();
		model.addAttribute("links", links);
		//qq
		Web_Set Webset = userService.findWebset();
		model.addAttribute("Webset", Webset);
		return "/front/first";
	}
	
	public String getStr (String str){
		if (str.length()>60) {
			String s = str.substring(0, 60)+"......";
			
			return s;
		}
		return str;
	}
	
}

package cn.two.bbs.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.StringUtils;

import cn.two.bbs.pojo.Leave;
import cn.two.bbs.pojo.Reply;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.LeaveService;

@Controller
@RequestMapping("leave")
public class LeaveController {
	@Resource
	private LeaveService leaveService;
	@RequestMapping("list")
	public String list(Model model){
		List<Leave> comList = leaveService.findAll();
		model.addAttribute("comList", comList);
		return "admin/leave/leaveList";
		
	}
	@RequestMapping("toview")
	public String toview(String id,Model model){
		Leave leave = leaveService.findOne(id);
		model.addAttribute("leave", leave);
		return "admin/leave/leaveToview";
		
	}
	@RequestMapping("toupdate")
	public String toupdate (String id,Model model){
		Leave leave = leaveService.findOne(id);
		model.addAttribute("leave", leave);
		return "admin/leave/leaveToupdate";
	}
	@RequestMapping("toreply")
	public String toreply(String id,Model model){
		Leave leave = leaveService.findOne(id);
		Reply reply = leaveService.findReply(id);
		model.addAttribute("leave", leave);
		model.addAttribute("reply", reply);
		return "admin/leave/reply";
	}
	@RequestMapping("savereply")
	public String savereply(Reply reply,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		reply.setCreateBy(user.getUsername());
		leaveService.saveReply(reply);
		return "redirect:/leave/list";
		
	}
	@RequestMapping("updatereply")
	public String updatereply(Reply reply,HttpServletRequest request){
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		reply.setUpdateBy(user.getUsername());
		System.out.println(reply.getId());
		leaveService.updateReply(reply);
		return "redirect:/leave/list";
	}
	@RequestMapping("delete")
	public String delete(String id){
		leaveService.delete(id);
		return "redirect:/leave/list";
	}
	@RequestMapping("deletereply")
	public String deletereply(String id){
		leaveService.deletereply(id);
		return "redirect:/leave/list";
	}
	@RequestMapping("findMore")
	public String findMore(String keywords,Model model){
		List<Leave> comList = leaveService.findMore(keywords);
		model.addAttribute("comList", comList);
		return "admin/leave/leaveList";
	}
}

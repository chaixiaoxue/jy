package cn.two.bbs.controller;

import java.util.List;

import javax.annotation.Resource;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import cn.two.bbs.pojo.Group;
import cn.two.bbs.pojo.User;
import cn.two.bbs.service.GroupService;

@Controller
@RequestMapping("/group/")
public class GroupController {
	
	@Resource
	private GroupService groupService;
	@RequestMapping("list")
	public  String findAll(Model model){
		List<Group> groupList = groupService.findAll();
		model.addAttribute("groupList", groupList);
		return "admin/group/groupList";
	}
	@RequestMapping("start")
	public  String start(String[] groupId){
		Integer state =1;
		groupService.updateState(groupId,state);
		
		return "redirect:/group/list";
	}
	@RequestMapping("stop")
	public  String stop(String[] groupId){
		Integer state =0;
		groupService.updateState(groupId,state);
		
		return "redirect:/group/list";
	}
	@RequestMapping("delete")
	public  String delete(String[] groupId){
		groupService.deleteGroups(groupId);
		return "redirect:/group/list";
	}
	@RequestMapping("tosave")
	public  String tosave(Model model){
		
		return "admin/group/groupCreate";
	}
	@RequestMapping("save")
	public  String save(Group group){
		groupService.saveGroup(group);
		return "redirect:/group/list";
	}
	@RequestMapping("toupdate")
	public  String toupdate(String groupId,Model model){
		Group group = groupService.findOne(groupId);
		System.out.println(group);
		model.addAttribute("group", group);
		return "admin/group/groupUpdate";
	}
	@RequestMapping("update")
	public  String update(Group group){
		System.out.println(group);
		groupService.updateGroup(group);
		System.out.println(group);
		return "redirect:/group/list";
	}
	@RequestMapping("searchUsersByKeywords")
	public  String searchUsersByKeywords(String keywords,Model model){
		if(keywords==""||keywords==null){
			model.addAttribute("tips", "没有找到符合条件的用户");
			return "forward:/group/list";
		}
		List<User> userList = groupService.searchUsersByKeywords(keywords);
		if(userList.size()<=0){
			model.addAttribute("tips", "没有找到符合条件的用户");
			return "forward:/group/list";
		}
		model.addAttribute("userList", userList);
		return "admin/user/userList";
	}
	@RequestMapping("searchUsersByGid")
	public  String searchUsersByGid(String groupId,Model model){
		List<User> userList = groupService.searchUsersByGid(groupId);
		if(userList.size()<=0){
			model.addAttribute("tips", "没有找到符合条件的用户");
			return "forward:/group/list";
		}
		model.addAttribute("userList", userList);
		return "admin/user/userList";
	}
	
}

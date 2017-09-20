package cn.two.bbs.controller;

import java.io.BufferedReader;
import java.io.FileOutputStream;
import java.io.InputStream;
import java.io.InputStreamReader;
import java.io.OutputStreamWriter;
import java.util.Date;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.mysql.jdbc.StringUtils;

import cn.two.bbs.pojo.User;
import cn.two.bbs.pojo.Web_Set;
import cn.two.bbs.service.GroupService;
import cn.two.bbs.service.UserService;
import cn.two.bbs.utils.Command;
import cn.two.bbs.utils.MD5;

@Controller
@RequestMapping("/user/")
public class UserController {
	private static Boolean flag = true;
	@Resource
	private UserService userService;
	@Resource
	private GroupService groupService;
	/*@RequestMapping("user/addTime")*/
	/*public  String findAll(@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum){
		
	}*/
	@RequestMapping("list")
	public  String findAll(HttpServletRequest request,Model model){
		//PageHelper.startPage(pageNum,3);
		/*List<User> userList = userService.findAll();
		PageInfo pageInfo = new PageInfo(userList);
		
		List<Group> groupList = groupService.findAll();
		model.addAttribute("userList", userList);
		model.addAttribute("groupList", groupList);
		model.addAttribute("pageInfo", pageInfo );*/
		if(flag){
			HttpSession session =  request.getSession();
			User user = (User) session.getAttribute("userSession");
			userService.updatelostLoginTime(user.getUserId(), new Date());
			userService.updateTimes(user.getUserId(),user.getTimes()+1);
			userService.updateIp(user.getUserId(),user.getLastLoginIp());
		}
		model.addAttribute("loginTime", new Date());
		return "admin/user/userList";
	}
	@RequestMapping("start")
	public  String start(String[] userId){
		Integer state =1;
		userService.updateState(userId,state);
		
		return "redirect:/user/list";
	}
	@RequestMapping("stop")
	public  String stop(String[] userId){
		Integer state =0;
		userService.updateState(userId,state);
		
		return "redirect:/user/list";                                              
	}
	/*@RequestMapping("delete")
	public  String delete(String userId){
		userService.deleteUsers(userId);
		return "redirect:/user/list";
	}*/
	/**
	 * 后台管理者的新增
	 * @param userId
	 * @return
	 */
	@RequestMapping("toCreate")
	public  String create(Model model){
		
		//List<Group> groupList = groupService.findAll();
		//model.addAttribute("groupList", groupList);
		return "admin/user/userCreate";
	}
	@RequestMapping("save")
	public  String save(User user,Model model){
		//System.out.println(user);
		//userService.
		User u = userService.findUserByUsername(user.getUsername());
		if (u == null) {
			
			userService.saveUser(user);
			return "redirect:/user/list";
		}else {
			model.addAttribute("username", user.getUsername());
			model.addAttribute("msg", "用户名已存在，请重新输入");
			return "admin/user/userCreate";
		}
	}
	@RequestMapping("toUpdate")
	public  String toUpdate(Model model){
		
		//List<Group> groupList = groupService.findAll();
		//model.addAttribute("groupList", groupList);
		return "admin/user/updateUser";
	}
	//修改密码
	@RequestMapping("update")
	public String update(String userId,String renewpass,HttpServletRequest request){
		//System.out.println(userId);
		HttpSession session = request.getSession();
		User user = (User) session.getAttribute("userSession");
		String username = user.getUsername();
		
		renewpass = MD5.getMD5Hash(username, renewpass); 
		userService.updateGroup(userId,renewpass);
		return "redirect:/user/list";
	}
	@RequestMapping("webset")
	public String webset (Model model,HttpServletRequest request){
		//System.out.println(r);
		/*String path = "/WEB-INF/dataBase/";
		String string = request.getSession().getServletContext().getRealPath(path);
		string = string.replace("\\", "/");
		System.out.println(string);
		Command command = new Command();
		command.backupDatebase("localhost","root","root", "jy", string+"/1.sql");*/
		Web_Set  web_Set =  userService.findWebset();
		//System.out.println(web_Set);
		model.addAttribute("web_Set", web_Set);
		return "admin/user/web_set";
	}
	@RequestMapping("updatewebset")
	public String updatewebset (Web_Set web_Set){
		userService.updateWebSet(web_Set);
		return "redirect:/user/webset";
	}
	@RequestMapping("backupDatebase")
	public String backupDatebase (){
		return "admin/user/backupDatebase";
	}
	@RequestMapping("dataBase")
	public String dataBase (String dataName,Model model,HttpServletRequest request){
		if (StringUtils.isNullOrEmpty(dataName)) {
			model.addAttribute("msg", "数据库名字不能为空");
			return "admin/user/backupDatebase";
		}

			
		String path = "/WEB-INF/dataBase/";
		String string = request.getSession().getServletContext().getRealPath(path);
		string = string.replace("\\", "/");
		System.out.println(string);
		//Command command = new Command();
		try {
			Runtime rt = Runtime.getRuntime();
			
			Process child = rt.exec("mysqldump -uroot -proot -R -c --set-charset=utf8 host9723253");
			
			InputStream in = child.getInputStream();
			
			InputStreamReader xx = new InputStreamReader(in, "utf8");
			
			String inStr;
			StringBuffer sb = new StringBuffer("");
			String outStr;
			
			BufferedReader br = new BufferedReader(xx);
			while ((inStr = br.readLine()) != null) {
				sb.append(inStr + "\r\n");
			}
			outStr = sb.toString();
			
			
			FileOutputStream fout = new FileOutputStream(string+"/"+dataName+".sql");
			OutputStreamWriter writer = new OutputStreamWriter(fout, "utf8");
			writer.write(outStr);
			writer.flush();
			
			in.close();
			xx.close();
			br.close();
			writer.close();
			fout.close();
		} catch (Exception e) {
			e.printStackTrace();
		}
		//command.backupDatebase("localhost","root","root", "jy", string+"/"+dataName+".sql");
		return "redirect:/user/list";
	}
	//删除
	@RequestMapping("todelete")
	public String todelete(Model model){
		List<User> users = userService.findAll();
		model.addAttribute("users", users);
		return "admin/user/userdelete";
	}
	@RequestMapping("deleteuser")
	public String deleteuser(String id){
		userService.deleteUsers(id);
		
		return "redirect:/user/todelete";
	}
}

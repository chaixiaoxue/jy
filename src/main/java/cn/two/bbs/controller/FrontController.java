package cn.two.bbs.controller;

import java.io.IOException;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.two.bbs.pojo.Apply;
import cn.two.bbs.pojo.CV;
import cn.two.bbs.pojo.Img;
import cn.two.bbs.pojo.Leave;
import cn.two.bbs.pojo.Part;
import cn.two.bbs.pojo.Post;
import cn.two.bbs.pojo.PostReply;
import cn.two.bbs.pojo.Recruit;
import cn.two.bbs.pojo.Section;
import cn.two.bbs.pojo.User;
import cn.two.bbs.pojo.Web_Set;
import cn.two.bbs.service.CaseService;
import cn.two.bbs.service.CompanyService;
import cn.two.bbs.service.ImageService;
import cn.two.bbs.service.LeaveService;
import cn.two.bbs.service.NewService;
import cn.two.bbs.service.PostService;
import cn.two.bbs.service.RecruitService;
import cn.two.bbs.service.SectionService;
import cn.two.bbs.service.ServiceService;
import cn.two.bbs.service.TalentService;
import cn.two.bbs.service.UserService;
import cn.two.bbs.utils.VerifyCode;
import net.sf.json.JSONArray;
import sun.print.resources.serviceui;

/**
 * 前台页面调用的方法
 * @author 柴晓雪
 *
 */
@Controller
@RequestMapping("/front")
public class FrontController extends BaseController{
	
	@Resource
	private UserService userService;
	@Resource
	private PostService postService;
	@Resource
	private SectionService sectionService;
	@Resource
	private CompanyService companyService;
	@Resource
	private ImageService imageService;
	@Resource
	private LeaveService leaveService;
	@Resource
	private TalentService talentService;
	@Resource
	private RecruitService recruitService;
	@Resource
	private NewService newService;
	@Resource
	private CaseService caseService;
	@Resource
	private ServiceService serviceService;
	//注册页面
	@RequestMapping("/about")
	public String about(Model model,String id){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		Part part;
		if (StringUtils.isEmpty(id)) {
			part = companyService.findOne("11");
			List<Img> imgs = imageService.findAllImgBP("11");
			model.addAttribute("imgs", imgs);
			model.addAttribute("part", part);
			return "/front/about";
		}else {
			List<Img> imgs = imageService.findAllImgBP_F(id);
			part = companyService.findOne(id);
			//System.out.println(part);
			model.addAttribute("imgs", imgs);
			model.addAttribute("part", part);
			return "/front/about";
		}
	}
	@RequestMapping("/call")
	public String call (Model model){
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		Web_Set web_Set = userService.findWebset();
		model.addAttribute("web_Set", web_Set);
		return "/front/Contact_us";
	}
	/*@RequestMapping("/map")
	public String map(Model model){
		
	}*/
	@RequestMapping("message")
	public String message(Model model){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		return "/front/message";
	}
	@RequestMapping("savemessage")
	public String savemessage (Leave leave,String valistr,Model model,HttpServletRequest request){
		System.out.println(leave);
		if (StringUtils.isEmpty(leave.getContent())|| StringUtils.isEmpty(leave.getUsername())||StringUtils.isEmpty(leave.getEmail())||StringUtils.isEmpty(valistr)) {
			model.addAttribute("msg", "请完善必填信息或者验证码");
			//model.addAttribute("leave", leave);
			return "/front/message";
		}
		String email = leave.getEmail();
		if (!email.matches("^\\w+@\\w+(\\.\\w+)+$")) {
			model.addAttribute("msg", "邮箱格式不正确");
			return "/front/message";
		}
		String code = (String)request.getSession().getAttribute("valistr");
		//System.out.println(code);
		if (!valistr.trim().equalsIgnoreCase(code)) {
			model.addAttribute("msg", "请输入正确的验证码");
			return "/front/message";
		}
		leaveService.saveLeave(leave);
		return "redirect:/front";
	}
	
	@RequestMapping("/resume")
	public String resume(Model model){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		return "/front/resume";
	}
	@RequestMapping("/savecv")
	public String savecv (CV cv,String valistr,Model model,HttpServletRequest request){
		//System.out.println(cv);
		//System.out.println(valistr);
		if (StringUtils.isEmpty(cv.getName()) || StringUtils.isEmpty(cv.getEmail())  || StringUtils.isEmpty(cv.getPhone())||StringUtils.isEmpty(valistr)) {
			model.addAttribute("msg", "请完善必填信息或者验证码");
			//model.addAttribute("leave", leave);
			return "/front/resume";
		}
		String email = cv.getEmail();
		if (!email.matches("^\\w+@\\w+(\\.\\w+)+$")) {
			model.addAttribute("msg", "邮箱格式不正确");
			return "/front/resume";
		}
		String code = (String)request.getSession().getAttribute("valistr");
		//System.out.println(code);
		if (!valistr.trim().equalsIgnoreCase(code)) {
			model.addAttribute("msg", "请输入正确的验证码");
			return "/front/resume";
		}
		if (cv.getSex() == null) {
			cv.setSex(0);
		}
		if (cv.getMoney() == null) {
			cv.setMoney(0.0);
		}
		cv.setCreateBy(cv.getName());
		talentService.saveCv(cv);
		return "redirect:/front";
	}
	@RequestMapping("/Recruitment")
	public String Recruitment (Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="3")Integer pageSize){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		
		List<String> strings = recruitService.findAllTitle();
		model.addAttribute("strings", strings);
		PageHelper.startPage(pageNum,pageSize);
		
		List<Recruit> recruits = recruitService.findAll();
		PageInfo pageInfo = new PageInfo(recruits);
		
		model.addAttribute("recruits", recruits);
		model.addAttribute("pageInfo", pageInfo);
		return "/front/Recruitment";
	}
	@RequestMapping("apply")
	public String Apply(String parentId,Model model){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		model.addAttribute("parentId", parentId);
		return "/front/apply";
	}
	@RequestMapping("saveapply")
	public String saveapply(Apply apply,Model model,String valistr,HttpServletRequest request){
		if (StringUtils.isEmpty(apply.getUsername()) || StringUtils.isEmpty(apply.getPhone())||StringUtils.isEmpty(valistr)) {
			model.addAttribute("msg", "请完善必填信息或者验证码");
			//model.addAttribute("leave", leave);
			return "/front/apply";
		}
		String code = (String)request.getSession().getAttribute("valistr");
		//System.out.println(code);
		if (!valistr.trim().equalsIgnoreCase(code)) {
			model.addAttribute("msg", "请输入正确的验证码");
			return "/front/resume";
		}
		recruitService.saveApply(apply);
		return "redirect:/front/Recruitment";
	}
	@RequestMapping("Recruitment_Details")
	public String RecruitmentDetails (String id,Model model){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		Recruit recruit = recruitService.findOne(id);
		model.addAttribute("recruit", recruit);
		return "/front/Recruitment_Details";
	}
	//根据名字查找招聘信息
	@RequestMapping("findrecruits")
	public String findrecruits (String title,Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="3")Integer pageSize) throws UnsupportedEncodingException{
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		//处理乱码
		title = new String(title.getBytes("ISO-8859-1"),"utf-8");
		//System.out.println(title);
		List<String> strings = recruitService.findAllTitle();
		model.addAttribute("strings", strings);
		PageHelper.startPage(pageNum,pageSize);
		
		List<Recruit> recruits = recruitService.findrecruits(title);
		PageInfo pageInfo = new PageInfo(recruits);
		model.addAttribute("recruits", recruits);
		model.addAttribute("pageInfo", pageInfo);
		return "/front/Recruitment";
	}
	//展现一类新闻
	@RequestMapping("/new")
	public String news(String id,Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="10")Integer pageSize)throws UnsupportedEncodingException{
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		model.addAttribute("id", id);
		String [] p = {id};
		PageHelper.startPage(pageNum,pageSize);
		List<Part> onenews = newService.fandAllNews(p);
		PageInfo pageInfo = new PageInfo(onenews);
		model.addAttribute("onenews", onenews);
		model.addAttribute("pageInfo", pageInfo);
		return "/front/news";
	}
	@RequestMapping("News_Details")
	public String News_Details (String id,Model model){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		Part onenew = newService.findOneNews(id);
		String content = onenew.getContent();
		//System.out.println(onenew);
		model.addAttribute("onenew", onenew);
		return "/front/News_Details";
	}
	@RequestMapping("talent")
	public String talent(Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="10")Integer pageSize)throws UnsupportedEncodingException{
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		PageHelper.startPage(pageNum,pageSize);
		List<CV> cvs = talentService.fandAllCv();
		PageInfo pageInfo = new PageInfo(cvs);
		model.addAttribute("cvs", cvs);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/front/talent";
	}
	@RequestMapping("/onecase")
	public String onecase (String id,Model model){
		List<Img> caseImg = imageService.findAllImgBP(id);
		Part onecase = caseService.findOne(id);
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		model.addAttribute("onecase", onecase);
		model.addAttribute("caseImg", caseImg);
		return "/front/onecase";
	}
	@RequestMapping("service")
	public String service(String id,Model model){
		List<Part> parts = companyService.fandAll();
		model.addAttribute("parts", parts);
		List<Part> news = newService.fandAll();
		model.addAttribute("news", news);
		Part service = serviceService.findOne(id);
		List<Part> sonservice = serviceService.sonListToview(id);
		List<Img> serviceImgs = imageService.findAllImgBP(id);
		Img serviceImg = serviceImgs.get(0);
		model.addAttribute("serviceImg", serviceImg);
		model.addAttribute("service", service);
		model.addAttribute("sonservice", sonservice);
		return "/front/service";
	}
	@RequestMapping("/tologin")
	public String login(){
		return "/front/login";
	}
	//前台页面用户登录
	@RequestMapping("/login")
	public void login(String username,String password,HttpSession session,
			HttpServletResponse reponse) throws IOException{
		//非空判断不校验
		User user = userService.findUserByNAndP(username,password);
		
		if(user == null){
			//用户名密码错误，展示的时候不演示错误
			reponse.getWriter().write("false");
		}else{
			List<Post> postList = postService.findPostsByUserId(user.getUserId());
			List<Post> postReply = postService.findPostsReplyByUserId(user.getUserId());
			for (Post post : postReply) {
				System.out.println(postReply);
			}
 			Integer count = postList.size();
			Integer countReply = postReply.size();
			//将用户信息存放到session中
			session.setAttribute("userSession", user);
			session.setAttribute("count", count);
			session.setAttribute("postList", postList);
			session.setAttribute("countReply",countReply);
			reponse.getWriter().write("true");
		}
	}
	/*
	 * 使用restful进行页面判断，判断是从哪个页面传过来的
	 * 然后返回的时候返回当前页面
	 */
	@RequestMapping("/{page}/exit")
	public String exit(@PathVariable String page,HttpSession session){
		//清除session中的user信息
		session.invalidate();
		return "redirect:/"+page;
	}
	
	/**
	 * 帖子列表页
	 * 需要：置顶帖列表
	 * 版块帖子列表 筛选信息是否加精  是否置顶 是否通过
	 * 加精 cream 置顶 top  通过  state
	 */
	@RequestMapping("post_list")
	public String postList(Model model){
		
		List<Post> postList=postService.findAll();
		for (Post post : postList) {
			System.out.println(post);
		}
		List<Section> sectionList=sectionService.findAll();
		model.addAttribute("postList",postList);
		model.addAttribute("sectionList", sectionList);
		
		return "/front/post_list";
	}
	
	/**
	 * 校验用户名是否重复
	 * @throws IOException 
	 */
	@RequestMapping("checkUser")
	public void checkUser(String username,HttpServletResponse response) throws IOException{
		response.getWriter().write((userService.findUserByUsername(username) != null)+"");
	}
	/**
	 * 校验邮箱是否重复
	 * @throws IOException 
	 */
	@RequestMapping("checkEmail")
	public void checkEmail(String email,HttpServletResponse response) throws IOException{
		response.getWriter().write((userService.findUserByEmail(email) != null)+"");
	}
	
	/**
	 * 用户注册
	 */
	@RequestMapping("regist")
	public String regist(User user){
		userService.saveUser(user);
		return "redirect:/login";
	}
	/**
	 * 验证码
	 * @throws IOException 
	 */
	@RequestMapping("ValiImage")
	public void passcode(HttpServletRequest request, HttpServletResponse response) throws IOException{
		//System.out.println(request.getRequestURL());
		// 控制浏览器不要缓存验证码图片
		response.setDateHeader("Expires", -1);
		response.setHeader("Cache-Control", "no-cache");
		response.setHeader("Pragma", "no-cache");
		//调用画验证码工具，返给浏览器
		VerifyCode vc = new VerifyCode();
		vc.drawImage(response.getOutputStream());
		
		//获取验证码字符串
		String code = vc.getCode();
		request.getSession().setAttribute("valistr", code);
		
	}
	
	/**
	 * 查询用户的帖子列表
	 */
	@RequestMapping("userPost")
	public String userPost(String userId,Model model){
		List<Post> posts = postService.findPostsByUserId(userId);
		List<Post> postReply = postService.findPostsReplyByUserId(userId);
		List<Post> postList = new ArrayList<Post>();
		for (Post post : posts) {
			Post post1 = postService.findOne(post.getPostId());
			postList.add(post1);
		}
		
		model.addAttribute("postReply",postReply);
		model.addAttribute("postList",postList);
		return "front/user_info";
		
	}
	
	/**
	 *保存用户发的帖子 
	 */
	@RequestMapping("savePost")
	public String savePost(Post post){
		postService.savePost(post);
		return "redirect:/post_list";
	}
	@RequestMapping("savePostReply")
	public String savePostReply(PostReply postReply){
		postService.savePostReply(postReply);
		return "redirect:/post_list";
	}
	
	/**
	 * 帖子详情页面
	 */
	@RequestMapping("/post_content")
	public String findPostContent(String postId,Model model){
		
		Post post = postService.findOne(postId);
		System.out.println(post);
		User user = userService.findOne(post.getUserId());
		model.addAttribute("user",user);
		model.addAttribute("post", post);
		return "/front/post_content";
	}
	
	//利用ajax展示更多回复内容
	@RequestMapping("ajaxFindReply")
	public void ajaxFindReply(String replyId,HttpServletResponse response) throws IOException{
		
		List<PostReply> prList=postService.findReply(replyId);
		JSONArray jsonArray=JSONArray.fromObject(prList);
		
		//中文乱码的处理  无请求参数，返回的是json串。把html换成json
		response.setContentType("text/json;charset=utf-8");
		response.getWriter().write(jsonArray.toString());
	}
	
	/**
	 * 保存用户的回帖
	 * @return
	 */
	@RequestMapping("saveReply")
	public String svaeReply(PostReply reply){
		postService.saveReply(reply);
		return "redirect:/front/post_content?postId="+reply.getPostId();
	}
	
}

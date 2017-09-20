package cn.two.bbs.controller;

import java.io.IOException;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletResponse;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;

import cn.two.bbs.pojo.Post;
import cn.two.bbs.pojo.PostReply;
import cn.two.bbs.pojo.Section;
import cn.two.bbs.service.PostService;
import cn.two.bbs.service.SectionService;
import net.sf.json.JSONArray;

@Controller
@RequestMapping("/post/")
public class PostController {
	@Resource
	private PostService postService;
	@Resource
	private SectionService sectionService;
	
	@RequestMapping("list")
	public String list(Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="3")Integer pageSize){
		
		PageHelper.startPage(pageNum,pageSize);
		List<Post> postList=postService.findAll();
		PageInfo pageInfo = new PageInfo(postList);
		
		
		//List<Post> postList=postService.findAll();
		List<Section> sectionList=sectionService.findAll();
		model.addAttribute("postList",postList);
		model.addAttribute("sectionList", sectionList);
		
		model.addAttribute("pageInfo", pageInfo);
		
		return "/admin/post/post_list";
	}
	@RequestMapping("toview")
	public String toview(String postId,Model model){
		Post post = postService.findOne(postId);
		model.addAttribute("post", post);
		return "/admin/post/post_view";
	}
	@RequestMapping("delete")
	public String delete(String[] postId){
		postService.deletePost(postId);
		return "redirect:/post/list";
		
	}
	
	//加精
	@RequestMapping("addcream")
	public String addCream(String[] postId,String iscream){
		postService.updatecream(postId,iscream);
		return "redirect:/post/list";
	}
	//置顶
	@RequestMapping("addtop")
	public String addtop(String[] postId,String istop){
		postService.updatetop(postId,istop);
		return "redirect:/post/list";
	}
	
	//所属版块
	@RequestMapping("isSection")
	public String section(String[] postId,String sectionId){
		postService.updateSection(postId,sectionId);
		return "redirect:/post/list";
	}

	//模糊查询
	@RequestMapping("findMore")
	public String findMore(String keywords,Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="3")Integer pageSize){
		
		PageHelper.startPage(pageNum,pageSize);
		//List<Post> postList = postService.findPostsByState();
		List<Post> postList=postService.findMore(keywords);
		PageInfo pageInfo = new PageInfo(postList);
		
		model.addAttribute("postList",postList);
		model.addAttribute("pageInfo", pageInfo);
		return "/admin/post/post_list";
	}
	
	
	//待审核的帖子页面
	@RequestMapping("check")
	public String check(Model model,@RequestParam(value="pageNum",required=true,defaultValue="1") Integer pageNum,@RequestParam(value="pageSize",required=true,defaultValue="3")Integer pageSize){
		PageHelper.startPage(pageNum,pageSize);
		List<Post> postList = postService.findPostsByState();
		PageInfo pageInfo = new PageInfo(postList);
		
		model.addAttribute("postList", postList);
		model.addAttribute("pageInfo", pageInfo);
		
		return "/admin/post/post_check";
	}
	
	//修改通过状态页面
	@RequestMapping("toupdate")
	public String toupdate(String postId,Model model){
		Post post = postService.findOne(postId);
		model.addAttribute("post", post);
		return "/admin/post/post_update";
	}
	
	//修改状态
	@RequestMapping("update")
	public String toupdate(String postId){
		postService.updateState(postId);
		return "redirect:/post/check";
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
	
	
	//根据版块Id查询版块下的所有帖子
	@RequestMapping("findPostsBySectionId")
	public String fingPostsBySectionId(String sectionId,Model model){
		List<Post> postList=postService.findPostsBySectionId(sectionId);
		model.addAttribute("postList", postList);
		return "/admin/post/post_list";
	}
	
	//以用户id查询这个用户所发的帖子
	@RequestMapping("findPostsByUserId")
	public String findPostsByUserId(String userId,Model model){
		List<Post> postList=postService.findPostsByUserId(userId);
		model.addAttribute("postList",postList);
		return "";
	}
	
	//以用户id查询用户所回复过的主帖子
	@RequestMapping("findPostsReplyByUserId")
	public String fingPostsReplyByUserId(String userId,Model model){
		List<Post> postList=postService.findPostsReplyByUserId(userId);
		model.addAttribute("postList",postList);
		return "";
	}
	
	
}

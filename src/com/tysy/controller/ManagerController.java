package com.tysy.controller;

import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.tysy.pojo.Announce;
import com.tysy.pojo.Assess;
import com.tysy.pojo.Company;
import com.tysy.pojo.Member;
import com.tysy.pojo.Report;
import com.tysy.service.IannounceService;
import com.tysy.service.IassessService;
import com.tysy.service.IcompanyService;
import com.tysy.service.ImanagerService;
import com.tysy.service.ImemberService;
import com.tysy.service.IreportService;

@Controller
public class ManagerController {
@Resource
	private ImemberService memservice;
@Resource
	private IcompanyService comservice;
@Resource
	private ImanagerService manaservice;
@Resource
	private IannounceService annservice;
@Resource
	private IassessService assservice;
@Resource
	private IreportService repservice;
	@RequestMapping("personalmess.do")
	//跳转个人信息页面
	public String personalmess(HttpServletRequest req,ModelMap map){
		HttpSession session=req.getSession();
		int i=(int)session.getAttribute("level");
		if(i==1){
			return "memself";
		}else if(i==2){
			return "comself";
		}else{
			return "login";
		}
	}
	@RequestMapping("leave.do")
	//退出当前登录
	public String leave(HttpServletRequest req){
		HttpSession session=req.getSession();
		if(session.getAttribute("user")!=null){
			session.removeAttribute("user");
		}
		return "login";
	}
	@RequestMapping("deletecom.do")
	//删除公司对象
	public String deletecom(HttpServletRequest req){
		String username=req.getParameter("username");
		Company com=comservice.getComByUsername(username);
		int i=comservice.deleteCom(com);
		if(i>0){
			return "redirect:/personalmess.do";
		}else{
			return null;
		}
		
	}
	@RequestMapping("deletemem.do")
	//删除投递者对象
	public String deletemem(HttpServletRequest req){
		String username=req.getParameter("username");
		Member mem=memservice.getMemByUsername(username);
		int i=memservice.deletemem(mem);
		if(i>0){
			return "redirect:/personalmess.do";
		}else{
			return null;
		}
	}
	@RequestMapping("message.do")
	public String message(){
		return "message";
	}
	//跳转管理员首页
	@RequestMapping("manage.do")
	public String manage(ModelMap map){
		Announce ann=annservice.selectAll();
		System.out.println(ann);
		map.addAttribute("announce",ann);
		return "admin-index";
	}
	//跳转管理员企业管理
	@RequestMapping("commanage.do")
	public String commanage(HttpServletRequest req,ModelMap map){
		String cname=req.getParameter("cname");
		Company com=new Company();
		com.setCname(cname);
		List<Company> comlist=null;
		if(cname!=null){
			comlist=comservice.selectall(com);
		}else{
			comlist=comservice.getCompanys();
		}
		Announce ann=annservice.selectAll();
		map.addAttribute("announce",ann);
		map.addAttribute("complist", comlist);
		return "admin-comtable";
	}
	//跳转管理员个人管理
	@RequestMapping("memmanage.do")
	public String memmanage(ModelMap map){
		List<Member> memlist=memservice.getMembers();
		Announce ann=annservice.selectAll();
		map.addAttribute("announce",ann);
		map.addAttribute("memberlist", memlist);
		return "admin-memtable";
	}
	//跳转公告管理
	@RequestMapping("announcemanage.do")
	public String announcemanage(ModelMap map){
		Announce ann=annservice.selectAll();
		map.addAttribute("announce",ann);
		return "admin-announce";
	}
	//修改公告
	@RequestMapping("updateAnnounce.do")
	public String updateAnnounce(HttpServletRequest req){
		String activity=req.getParameter("activity");
		String content=req.getParameter("content");
		Announce ann=new Announce(1, activity, content);
		annservice.updateAnnounce(ann);
		return "redirect:/announcemanage.do";
	}
	//跳转管理员评论和公告页面
	@RequestMapping("annandrep.do")
	public String annandrep(ModelMap map){
		Announce ann=annservice.selectAll();
		List<Assess> asslist=assservice.getAssesses();
		List<Report> replist=repservice.getReports();
		map.addAttribute("asslist", asslist);
		map.addAttribute("replist", replist);
		map.addAttribute("announce",ann);
		return "admin-assandrep";
	}
	//删除留言
	@RequestMapping("deleteAssess.do")
	public String deleteAssess(HttpServletRequest req){
		Integer id=Integer.valueOf(req.getParameter("id"));
		assservice.deleteAssess(id);
		return "redirect:/annandrep.do";
	}
	
	@RequestMapping("pay-ui.do")
	public String payUI(){
		return "pay";
	}
}

package com.tysy.controller;

import java.util.ArrayList;
import java.util.List;

import javax.annotation.Resource;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.apache.commons.lang3.StringUtils;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.HttpMediaTypeNotSupportedException;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.portlet.ModelAndView;

import com.tysy.pojo.Announce;
import com.tysy.pojo.Assess;
import com.tysy.pojo.ComState;
import com.tysy.pojo.Company;
import com.tysy.pojo.Deliver;
import com.tysy.pojo.MemState;
import com.tysy.pojo.Member;
import com.tysy.pojo.MenuO;
import com.tysy.pojo.MenuT;
import com.tysy.pojo.Report;
import com.tysy.pojo.Vitae;
import com.tysy.service.CompanyService;
import com.tysy.service.IannounceService;
import com.tysy.service.IassessService;
import com.tysy.service.IcompanyService;
import com.tysy.service.IdeliverService;
import com.tysy.service.ImemberService;
import com.tysy.service.ImenuService;
import com.tysy.service.IreportService;
import com.tysy.service.IvitaeService;


@Controller
public class CompanyController {
	@Resource
	private IcompanyService service;
	@Resource
	private ImemberService memservice;
	@Resource
	private IdeliverService delservice;
	@Resource
	private ImenuService menuservice;
	@Resource
	private IannounceService annservice;
	@Resource
	private IvitaeService viaservice;
	@Resource
	private IassessService assservice;
	@Resource
	private IreportService repservice;
	@RequestMapping("search.do")
	public String getSearch(Company com,ModelMap map,HttpServletRequest req){
//		
		List<Company> comlist=service.getCompanys();
		//com.setData(comlist);
		List<MenuO> menuolist=menuservice.selectAllMenuO();
		List<MenuT> menutlist1=menuservice.selectAllMenuTByOid(1);
		List<MenuT> menutlist2=menuservice.selectAllMenuTByOid(2);
		List<MenuT> menutlist3=menuservice.selectAllMenuTByOid(3);
		List<MenuT> menutlist4=menuservice.selectAllMenuTByOid(4);
		List<MenuT> menutlist5=menuservice.selectAllMenuTByOid(5);
		List<MenuT> menutlist6=menuservice.selectAllMenuTByOid(6);
		map.addAttribute("com", comlist);
//		map.addAttribute("cname", com.getCname());
		map.addAttribute("menuo", menuolist);
		map.addAttribute("menut1", menutlist1);
		map.addAttribute("menut2", menutlist2);
		map.addAttribute("menut3", menutlist3);
		map.addAttribute("menut4", menutlist4);
		map.addAttribute("menut5", menutlist5);
		map.addAttribute("menut6", menutlist6);
		Announce ann=annservice.selectAll();
		map.addAttribute("announce",ann);
		return "newmain";
	}
	@RequestMapping("searchtwo.do")
	public String searchtwo(HttpServletRequest req,Company com,ModelMap map){
		
		if(com.getJob()!=null&&com.getJob().equals("所有")){
			com.setJob(null);
		}
		List<Company> comlist=service.selectall(com);
		List<Company> companylist=service.selectallByCondition(com);
		if (StringUtils.isBlank(com.getCname())) {
			com.setCname(null);
		}
		int pageno=1;
		if(req.getParameter("pageno")!=null){
			pageno=Integer.parseInt(req.getParameter("pageno"));
		}
		com.setDatacount(companylist.size());
		com.setPageno(pageno);
		com.setData(comlist);
		map.addAttribute("com", com);
		map.addAttribute("cname", com.getCname());
		return "main";
		
	}
	@RequestMapping("updatecom.do")
	public String updatecom(HttpServletRequest req){
		String username=req.getParameter("username");
		String cname=req.getParameter("cname");
		String address=req.getParameter("address");
		String tel=req.getParameter("tel");
		String job=req.getParameter("job");
		String boss=req.getParameter("boss");
		String message=req.getParameter("message");
		String password=req.getParameter("password");
		String jobdescribe=req.getParameter("jobdescribe");
		String moneycondition=req.getParameter("moneycondition");
		String weal=req.getParameter("weal");
		Company com=new Company(cname, address, tel, job, boss, message, username, password, 2, jobdescribe, moneycondition, weal);
		int i =service.updateCom(com);
		HttpSession session=req.getSession();
		session.setAttribute("user", com);
		if(i>0){
			return "comself";
		}else{
			return "login";
		}
	}
	@RequestMapping("deliver.do")
	public String deliver(HttpServletRequest req,ModelMap map){
		HttpSession session=req.getSession();
		List<Company> comlist=service.getCompanys();
		Announce ann=annservice.selectAll();
		Integer id=null;
		if(session.getAttribute("comid")!=null){
				id=(Integer)session.getAttribute("comid");
		}else{
			 id=Integer.valueOf(req.getParameter("id"));
		}
		int i=(int)session.getAttribute("level");
		List<Assess> asslist=assservice.getAssessByComid(id);
		if(i==1){
			Company com=service.getComById(id);
			map.addAttribute("com", com);
			map.addAttribute("asslist", asslist);
			map.addAttribute("announce",ann);
			map.addAttribute("comlist",comlist);
			return "companyexam";
		}else if(i==2){
			return "comself";
		}else{
			return "main";
		}
	}
	@RequestMapping("deliverup.do")
	public String deliverup(HttpServletRequest req){
		Integer id=Integer.valueOf(req.getParameter("id"));
		HttpSession session=req.getSession();
		Member mem=(Member)session.getAttribute("user");
		Deliver del=new Deliver(mem.getId(),id, 1);
		delservice.addDeliver(del);
		return "deliverresp";
	}
	@RequestMapping("messageup.do")
	public String message(HttpServletRequest req,ModelMap map){
		HttpSession session=req.getSession();
		int i=(int)session.getAttribute("level");
		if(i==1){
			Member mem=(Member)session.getAttribute("user");
			List<Deliver> delist=delservice.getDeliByMemid(mem.getId());
			List<ComState> userlist=new ArrayList<ComState>();
			if(delist!=null){
				for (Deliver deliver : delist) {
					Company com=service.getComById(deliver.getCompanyid());
					ComState cs=new ComState(com, deliver.getState());
					userlist.add(cs);
				}
				map.addAttribute("userlist", userlist);
				
			}else{
				map.addAttribute("userlist", null);
			}
			return "message";
		}else if(i==2){
			Company com=(Company)session.getAttribute("user");
			List<Deliver> delist=delservice.getDeliByComid(com.getId());
			List<MemState> userlist=new ArrayList<MemState>();
			if(delist!=null){
				for (Deliver deliver : delist) {
					Member mem=memservice.getMemById(deliver.getMemberid());
					MemState ms=new MemState(mem, deliver.getState());
					userlist.add(ms);
				}
				map.addAttribute("userlist", userlist);
				
			}else{
				map.addAttribute("userlist", null);
			}
			return "companymess";
		}else{
			return "redirect:/search.do";
		}
	}
	@RequestMapping("success.do")
	public String success(HttpServletRequest req){
		Integer id=Integer.valueOf(req.getParameter("id"));
		List<Deliver> delist=delservice.getDeliByMemid(id);
		for (Deliver deliver : delist) {
			deliver.setState(2);
			delservice.updateDeliver(deliver);
		}
		return "redirect:/messageup.do";
	}
	@RequestMapping("fail.do")
	public String fail(HttpServletRequest req){
		Integer id=Integer.valueOf(req.getParameter("id"));
		List<Deliver> delist=delservice.getDeliByMemid(id);
		for (Deliver deliver : delist) {
			deliver.setState(3);
			delservice.updateDeliver(deliver);
		}
		return "redirect:/messageup.do";
	}
	//公司用户界面查看个人用户简历
	@RequestMapping("checkVitae.do")
	public String checkVitae(HttpServletRequest req,ModelMap map){
		Integer id=Integer.valueOf(req.getParameter("id"));
		Member mem=memservice.getMemById(id);
		Vitae via=viaservice.selectVitaeByMemid(id);
		map.addAttribute("member", mem);
		map.addAttribute("via", via);
		return "comVitae";
	}
	//公司界面 用户对该公司进行评论
	@RequestMapping("assess.do")
	public String assess(HttpServletRequest req){
		Integer comid=Integer.valueOf(req.getParameter("comid"));
		String text=req.getParameter("text");
		HttpSession session=req.getSession();
		Member mem=(Member)session.getAttribute("user");
		Assess ass=new Assess(mem.getId(), comid, text);
		int i=assservice.addAssess(ass);
		session.setAttribute("comid", comid);
		return "redirect:/deliver.do";
	}
	//公司界面 用户对该公司进行举报
		@RequestMapping("report.do")
		public String report(HttpServletRequest req){
			Integer comid=Integer.valueOf(req.getParameter("comid"));
			String text=req.getParameter("text");
			HttpSession session=req.getSession();
			Member mem=(Member)session.getAttribute("user");
			Report rep=new Report(mem.getId(), comid, text);
			int i=repservice.addReport(rep);
			session.setAttribute("comid", comid);
			return "redirect:/deliver.do";
		}
	//管理员界面删除公司企业用户操作
		@RequestMapping("deleteCompany.do")
		public String deleteCompany(HttpServletRequest req){
			Integer comid=Integer.valueOf(req.getParameter("id"));
			Company com=service.getComById(comid);
			service.deleteCom(com);
			return "admin-comtable";
		}
	//用户查看公司页面右边栏
		@RequestMapping("deliversub.do")
		public String deliversub(HttpServletRequest req,ModelMap map){
			HttpSession session=req.getSession();
			List<Company> comlist=service.getCompanys();
			Announce ann=annservice.selectAll();
			Integer id=Integer.valueOf(req.getParameter("id"));
			int i=(int)session.getAttribute("level");
			List<Assess> asslist=assservice.getAssessByComid(id);
			if(i==1){
				Company com=service.getComById(id);
				map.addAttribute("com", com);
				map.addAttribute("asslist", asslist);
				map.addAttribute("announce",ann);
				map.addAttribute("comlist",comlist);
				return "companyexam";
			}else if(i==2){
				return "comself";
			}else{
				return "main";
			}
		}
		
}

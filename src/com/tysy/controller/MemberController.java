package com.tysy.controller;

import java.awt.Color;
import java.awt.Graphics;
import java.awt.image.BufferedImage;
import java.io.IOException;
import java.io.OutputStream;
import java.io.PrintWriter;
import java.io.UnsupportedEncodingException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.Random;

import javax.annotation.Resource;
import javax.servlet.http.Cookie;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.json.JSONArray;
import org.json.JSONObject;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.RequestMapping;

import com.kdyzm.utils.PaymentUtil;
import com.sun.image.codec.jpeg.JPEGCodec;
import com.sun.image.codec.jpeg.JPEGImageEncoder;
import com.tysy.pojo.Announce;
import com.tysy.pojo.Company;
import com.tysy.pojo.Manager;
import com.tysy.pojo.Member;
import com.tysy.pojo.MenuO;
import com.tysy.pojo.MenuT;
import com.tysy.pojo.Vitae;
import com.tysy.service.IannounceService;
import com.tysy.service.IcompanyService;
import com.tysy.service.ImanagerService;
import com.tysy.service.ImemberService;
import com.tysy.service.ImenuService;
import com.tysy.service.IvitaeService;



@Controller
public class MemberController {
	@Resource
		private ImemberService memservice;
	@Resource
		private IcompanyService comservice;
	@Resource
		private ImanagerService manaservice;
	@Resource
		private ImenuService menuservice;
	@Resource
		private IvitaeService viaservice;
	@Resource
		private IannounceService annservice;
	//��תǰ��ҳ��
	@RequestMapping("front.do")
	public String front(){
		return "front";
	}
	//��ת��¼ҳ
	@RequestMapping("exit.do")
	public String login(HttpServletRequest req,HttpServletResponse resp){
		HttpSession session=req.getSession();
		if(session.getAttribute("user")!=null){
			session.removeAttribute("user");
			Cookie[] cookies = req.getCookies(); 
			if (cookies != null && cookies.length > 0) { 
			  for (Cookie cookie : cookies) { 
			    String name = cookie.getName(); 
			    // �ҵ���Ҫɾ����Cookie 
			    if (name.compareTo("username") == 0) { 
			      // ����������Ϊ0 
			      cookie.setMaxAge(0); 
			      // ���Response����Ч 
			      resp.addCookie(cookie); 
			    } 
			  } 
			} 
		}
		return "login";
	}
	//�����¼���
	@RequestMapping("login.do")
	public String getMemByMail(HttpServletRequest req,HttpServletResponse resp){
		HttpSession session=req.getSession();
		String username=req.getParameter("username");
		String password=req.getParameter("password");
		System.out.println(username+password);
		Member mem=memservice.getMemByUsername(username);
		System.out.println(mem);
		Company com=comservice.getComByUsername(username);
		Manager mana=manaservice.getManaByUsername(username);
		if(mem==null&&com!=null){
			String pwd2=com.getPassword();
			if(password.equals(pwd2)){
				session.setMaxInactiveInterval(60*60*24*7);
				session.setAttribute("user", com);
				session.setAttribute("level",com.getLevel());
				
				return "redirect:/personalmess.do";
			}else{
				return "login";
			}
		}else if(mem!=null&&com==null){
			String pwd1=mem.getPassword();
			if(password.equals(pwd1)){
				session.setMaxInactiveInterval(60*60*24*7);
				session.setAttribute("user", mem);
				session.setAttribute("level",mem.getLevel());
				return "redirect:/search.do";
				
			}else{
				return "login";
			}
		}else{
			String pwd=mana.getPassword();
			if(password.equals(pwd)){
				session.setMaxInactiveInterval(60*60*24*7);
				session.setAttribute("user", mana);
				session.setAttribute("level",mana.getLevel());
				return "redirect:/manage.do";
			}else{
				return "login";
			}
		}
	}
	//��תע��ҳ
	@RequestMapping("regist.do")
	public String regist(){
		return "regist";
	}
	@RequestMapping("newmain.do")
	public String newmain(){
		return "newmain";
	}
	//��֤�û���
		@RequestMapping("username.do")
		public String usernamedo(HttpServletRequest req,HttpServletResponse resp){
			String username=req.getParameter("username");
			Member mem=memservice.getMemByUsername(username);
			PrintWriter pw=null;
			try {
				pw = resp.getWriter();
				if(mem==null){
					pw.print("1");
				}else{
					pw.print("0");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				pw.close();
			}
			
			return null;
		}
		//��ʾ��֤��
		@RequestMapping("checkcode.do")
		public String checkcode(HttpServletRequest req,HttpServletResponse resp) throws Exception{
			resp.setContentType("image/jpeg");
			Random r=new Random();
			BufferedImage image = new BufferedImage(60, 20, BufferedImage.TYPE_INT_RGB);
			Graphics g = image.getGraphics();
			g.setColor(new Color(r.nextInt(255),r.nextInt(255),r.nextInt(255)));
			g.fillRect(0, 0, 60, 20);
			g.setColor(new Color(0,0,0));
			String number = String.valueOf(r.nextInt(99999));
			req.getSession().setAttribute("code", number);
			g.drawLine(r.nextInt(60), r.nextInt(20),r.nextInt(60),r.nextInt(20));
			g.drawString(number, 5, 15);
			OutputStream os=resp.getOutputStream();
			JPEGImageEncoder encoder = JPEGCodec.createJPEGEncoder(os);
			encoder.encode(image);
			return null;
		}
		//�л���֤��
		@RequestMapping("lookcode.do")
		public String lookcode(HttpServletRequest req,HttpServletResponse resp){
			String number=(String)req.getSession().getAttribute("code");
			PrintWriter pw=null;
			try {
				pw = resp.getWriter();
				pw.print(number);
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				pw.close();
			}
			return null;
		}
		//����ע����
		@RequestMapping("registup.do")
		public String registup(HttpServletRequest req,HttpServletResponse resp){
			String name = req.getParameter("name"); 
			String birth=req.getParameter("birth");
			String sex=req.getParameter("sex");
			String graschool=req.getParameter("graschool");
			String username=req.getParameter("username");
			String password=req.getParameter("password");
			Member mem=new Member(name, birth, sex, graschool, username, password, 1);
			int i =memservice.addMem(mem);
			PrintWriter pw=null;
			try {
				pw = resp.getWriter();
				if(i>0){
					pw.print("1");
				}else{
					pw.print("0");
				}
			} catch (IOException e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}finally {
				pw.close();
			}
			if(i>0){
				return null;
			}else{
				return "error";
			}
		}
		//��ע�������ص�¼ҳ
		@RequestMapping("registresp.do")
		public String registresp(){
			return "login";
		}
		//�޸�Ͷ���ߵ���Ϣ
		@RequestMapping("updatemem.do")
		public String updatemem(HttpServletRequest req){
			String username=req.getParameter("username");
			String name=req.getParameter("name");
			String birth=req.getParameter("birth");
			String sex=req.getParameter("sex");
			String graschool=req.getParameter("graschool");
			String password=req.getParameter("password");
			Member mem=new Member(name, birth, sex, graschool, username, password, 1);
			int i =memservice.updatemem(mem);
			HttpSession session=req.getSession();
			session.setAttribute("user", mem);
			if(i>0){
				return "memself";
			}else{
				return "login";
			}
		}
		//�������ҳ��
		@RequestMapping("vitae.do")
		public String vitae(HttpServletRequest req,ModelMap map){
			HttpSession session=req.getSession();
			Member mem=(Member)session.getAttribute("user");
			Vitae via=viaservice.selectVitaeByMemid(mem.getId());
			map.addAttribute("via", via);
			map.addAttribute("member", mem);
			return "vitae";
		}
		//�޸ļ�����ת
		@RequestMapping("updateVitae.do")
		public String updateVitae(HttpServletRequest req,Member mem,Vitae via){
			HttpSession session=req.getSession();
			Member member=(Member)session.getAttribute("user");
			via.setMemid(member.getId());
			System.out.println(via);
			Vitae vitae=viaservice.selectVitaeByMemid(member.getId());
			memservice.updatemem(mem);
			if(vitae!=null){
				viaservice.updateVitae(via);
			}else{
				viaservice.addVitae(via);
			}
				return "redirect:/search.do";
		}
		//����Ա����ɾ����˾��ҵ�û�����
		@RequestMapping("deleteMember.do")
		public String deleteMember(HttpServletRequest req){
			Integer memid=Integer.valueOf(req.getParameter("id"));
			Member mem=memservice.getMemById(memid);
			memservice.deletemem(mem);
			return "admin-memtable";
		}
		//��ת֧������
		@RequestMapping("payServlet.do")
		public void payServlet(HttpServletRequest request,HttpServletResponse response) throws Exception{
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String 	p0_Cmd="Buy",
					p1_MerId="10001126856",
					p2_Order=request.getParameter("p2_Order"),
					p3_Amt=request.getParameter("p3_Amt"),
					p4_Cur="CNY",
					p5_Pid="",
					p6_Pcat="",
					p7_Pdesc="",
					p8_Url="http://localhost:8080/wanzhao/back.do",
					p9_SAF="",
					pa_MP="",
					pd_FrpId=request.getParameter("pd_FrpId"),
					pr_NeedResponse="1";
			String keyValue="69cl522AV6q613Ii4W6u8K6XuW8vM1N6bFgyv769220IuYe9u37N4y7rI4Pl";
			String hmac=PaymentUtil.buildHmac(p0_Cmd, p1_MerId, p2_Order, p3_Amt, p4_Cur, p5_Pid, p6_Pcat, p7_Pdesc, p8_Url, p9_SAF, pa_MP, pd_FrpId, pr_NeedResponse, keyValue);
			String url="https://www.yeepay.com/app-merchant-proxy/node?"+
			"&p0_Cmd="+p0_Cmd+
			"&p1_MerId="+p1_MerId+
			"&p2_Order="+p2_Order+
			"&p3_Amt="+p3_Amt+
			"&p4_Cur="+p4_Cur+
			"&p5_Pid="+p5_Pid+
			"&p6_Pcat="+p6_Pcat+
			"&p7_Pdesc="+p7_Pdesc+
			"&p8_Url="+p8_Url+
			"&p9_SAF="+p9_SAF+
			"&pa_MP="+pa_MP+
			"&pd_FrpId="+pd_FrpId+
			"&pr_NeedResponse="+pr_NeedResponse+
			"&hmac="+hmac;
			response.sendRedirect(url);
		}
		//��ת֧���ɹ�ҳ��
		@RequestMapping("/back.do")
		public String backServlet(HttpServletRequest request,HttpServletResponse response,ModelMap map) throws Exception{
			request.setCharacterEncoding("utf-8");
			response.setContentType("text/html;charset=utf-8");
			String r1_Code=request.getParameter("r1_Code");
				String p1_MerId=request.getParameter("p1_MerId");
				String r3_Amt=request.getParameter("r3_Amt");
				String r6_Order=request.getParameter("r6_Order");
				String rp_PayDate=request.getParameter("rp_PayDate");
				map.addAttribute("p1_MerId", p1_MerId);
				map.addAttribute("r3_Amt", r3_Amt);
				map.addAttribute("r6_Order", r6_Order);
				map.addAttribute("rp_PayDate", rp_PayDate);
					return "payback";
				
				
//				pw.println("֧���ɹ���<br/>"
//						+ "�̻���ţ�"+p1_MerId+"<br/>"
//						+ "֧����"+r3_Amt+"<br/>"
//						+"�̻������ţ�"+r6_Order+"<br/>"
//						+"֧���ɹ�ʱ�䣺"+rp_PayDate);
		}
		//��ת��ְ����ҳ��
		@RequestMapping("taste.do")
		public String taste(HttpServletRequest req,ModelMap map){
			List<Company> comlist=comservice.getCompanys();
			Announce ann=annservice.selectAll();
			map.addAttribute("announce",ann);
			map.addAttribute("comlist",comlist);
			return "taste";
		}
}

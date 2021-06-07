package controller;

import java.io.IOException;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.JoinDAO;
import vo.JoinBean;


@WebServlet("*.do")
public class JoinController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public JoinController() {
        super();
     
    }

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("controller실행");
    	request.setCharacterEncoding("utf-8");
    	HttpSession session = request.getSession();
		String requestURI=request.getRequestURI();
		System.out.println(requestURI);
		String contextPath=request.getContextPath();
		System.out.println(contextPath);
		String uri=requestURI.substring(contextPath.length());
		String path=null;
		
		if(uri.equals("/join.do")) {
			path="/mypage.jsp";
			System.out.println("join do실행");
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			String tel=request.getParameter("tel");
			String email1=request.getParameter("email1");
			String email2=request.getParameter("email2");
			String sex=request.getParameter("gender");
			String agree=request.getParameter("agree");
			String content=request.getParameter("content");
			
			JoinBean join=new JoinBean();
			join.setJname(name);
			join.setJpass(pass);
			join.setJtel(tel);
			join.setJemail1(email1);
			join.setJemail2(email2);
			join.setJsex(sex);
			join.setJcheck(agree);
			join.setJcontent(content);
			
			JoinDAO joinDAO=new JoinDAO();
			joinDAO.insert(join);
			
			request.setAttribute("name",name);
			request.setAttribute("pass",pass);
			request.setAttribute("tel",tel);
			request.setAttribute("email1",email1);
			request.setAttribute("email2",email2);
			request.setAttribute("sex",sex);
			request.setAttribute("agree",agree);
			request.setAttribute("content",content);
		
		}else if(uri.equals("/joinDelete.do")) {
			path="/join.html";
			System.out.println("delete do 실행");
			String email1=request.getParameter("email1");
			String email2=request.getParameter("email2");
			
			JoinDAO joinDAO=new JoinDAO(); 
			joinDAO.delete(email1, email2);
			
			
		}else if(uri.equals("/mypageSelect.do")) {
			path="/mypage1.jsp";
			System.out.println("select실행�");
			
			String email1=(String)session.getAttribute("email1");
			String email2=(String)session.getAttribute("email2");
			String pass=(String)session.getAttribute("pass");
			
			
			
			JoinDAO joinDAO=new JoinDAO();
			JoinBean joinBean=joinDAO.select(email1, email2);
			System.out.println(joinBean);
			request.setAttribute("join", joinBean);
		}else if(uri.equals("/login.do")) {
		
			System.out.println("login.do 실행");
			String email1=request.getParameter("email1");
			String email2=request.getParameter("email2");
			String pass=request.getParameter("pass");
			System.out.println(email1);
			System.out.println(email2);
			
			JoinDAO joinDAO =new JoinDAO(); 
			JoinBean join=joinDAO.select(email1, email2, pass);
			System.out.println(join);
			if(join.getJemail1()==null || 
					join.getJemail2()==null || join.getJpass()==null) {
				
				session.setAttribute("loginFail","���̵� �Ǵ� ��й�ȣ�� Ʋ���ϴ�.");
				response.sendRedirect("login.jsp");
			}else {
				path="/index.jsp";
				session.setAttribute("email1", join.getJemail1());
				session.setAttribute("email2", join.getJemail2());
				session.setAttribute("pass", join.getJpass());
				request.setAttribute("join", join);
			}
		}else if(uri.equals("/logout.do")) {
			path="/index.jsp";
			
			System.out.println("logout.do 실행");
			session.removeAttribute("email1");
			session.removeAttribute("email2");
			session.removeAttribute("pass");
			
		}
		
		if(path!=null) {
			RequestDispatcher dispatcher=request.getRequestDispatcher(path);
			dispatcher.forward(request, response);
		}
	}
	protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
	
		doProcess(request, response);
	}

	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		doProcess(request, response);
	}

}

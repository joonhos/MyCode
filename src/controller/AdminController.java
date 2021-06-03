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


@WebServlet("*.ad")
public class AdminController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public AdminController() {
        super();
     
    }

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("서블릿 시작");
    	request.setCharacterEncoding("utf-8");
    	HttpSession session = request.getSession();
		String requestURI=request.getRequestURI();
		System.out.println(requestURI);
		String contextPath=request.getContextPath();
		System.out.println(contextPath);
		String uri=requestURI.substring(contextPath.length());
		String path=null;
		
		if(uri.equals("/admin.a")) {
			path="/mypage.jsp";
			System.out.println("join do실행");
			String name=request.getParameter("name");
			String pass=request.getParameter("pass");
			String tel=request.getParameter("pass");
			String email1=request.getParameter("email1");
			String email2=request.getParameter("email2");
			String gender=request.getParameter("gender");
			String agree=request.getParameter("agree");
			String content=request.getParameter("content");
			
			JoinBean join=new JoinBean();
			join.setJname(name);
			join.setJpass(pass);
			join.setJtel(tel);
			join.setJemail1(email1);
			join.setJemail2(email2);
			join.setJsex(gender);
			join.setJcheck(agree);
			join.setJcontent(content);
			
			JoinDAO joinDAO=new JoinDAO();
			joinDAO.insert(join);
			
			request.setAttribute("name",name);
			request.setAttribute("pass",pass);
			request.setAttribute("tel",tel);
			request.setAttribute("email1",email1);
			request.setAttribute("email2",email2);
			request.setAttribute("gender",gender);
			request.setAttribute("agree",agree);
			request.setAttribute("content",content);
		
		}else if(uri.equals("/joinDelete.a")) {
			path="/join.html";
			System.out.println("delete실행준비");
			String email1=request.getParameter("email1");
			String email2=request.getParameter("email2");
			
			JoinDAO joinDAO=new JoinDAO(); 
			joinDAO.delete(email1, email2);
			
			
		}else if(uri.equals("/mypageSelect.a")) {
			path="/mypage1.jsp";
			System.out.println("select시작");
			
			String email1=(String)session.getAttribute("email1");
			String email2=(String)session.getAttribute("email2");
			String pass=(String)session.getAttribute("pass");
			
			
			
			JoinDAO joinDAO=new JoinDAO();
			JoinBean joinBean=joinDAO.select(email1, email2);
			System.out.println(joinBean);
			request.setAttribute("join", joinBean);
		}else if(uri.equals("/longin.do")) {
			System.out.println("login.do 시작");
		}else if(uri.equals("/logout.do")) {
			System.out.println("logout.do 시작");
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

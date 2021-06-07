package controller;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import dao.BoardDAO;
import dao.JoinDAO;
import vo.BoardBean;
import vo.JoinBean;
import vo.PageInfo;


@WebServlet("*.a")
public class BoardController extends HttpServlet {
	private static final long serialVersionUID = 1L;
       
   
    public BoardController() {
        super();
     
    }

    protected void doProcess(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
    	System.out.println("borad controller");
    	request.setCharacterEncoding("utf-8");
    	HttpSession session = request.getSession();
		String requestURI=request.getRequestURI();
		System.out.println(requestURI);
		String contextPath=request.getContextPath();
		System.out.println(contextPath);
		String uri=requestURI.substring(contextPath.length());
		String path=null;
		
		if(uri.equals("/boardWrite.a")) {
			path="/boardSelect.a";
			System.out.println("boardWrite.a 실행");
		
			String email1=(String)session.getAttribute("email1");
			
			Date nowTime = new Date();
			SimpleDateFormat sdfmt = new SimpleDateFormat("yyyy-MM-dd");
			String date=sdfmt.format(nowTime);
			
			String[] subject1=request.getParameterValues("subject");
			String subject=subject1[0];
			String title=request.getParameter("title");
		
			String boardFile=request.getParameter("boardFile");
			String content=request.getParameter("content");
			
			BoardBean board=new BoardBean();
			board.setBemail1(email1);
			board.setBsubject(subject);
			board.setBtitle(title);
			board.setBfileName(boardFile);
			board.setBcontent(content);
			board.setBdate(date);
			
			BoardDAO boardDAO = new BoardDAO();
			boardDAO.insert(board);
			
			request.setAttribute("emial1", email1);
			request.setAttribute("date", date);
			request.setAttribute("title", title);
			
		}else if(uri.equals("/joinDelete.a")) {
			path="/join.html";
			System.out.println("delete실행");
			String email1=request.getParameter("email1");
			String email2=request.getParameter("email2");
			
			JoinDAO joinDAO=new JoinDAO(); 
			joinDAO.delete(email1, email2);
			
			
		}else if(uri.equals("/boardSelect.a")) {
			path="/notice_view.jsp";
			System.out.println("boardSelect.a실행");
			String date;
			
			if(request.getAttribute("date")!=null) {
					date=(String)request.getAttribute("date");
			}else {
					date=request.getParameter("date");
			}
			String title=request.getParameter("title");
			System.out.println(date);		
			System.out.println(title);		
				
			
			BoardDAO boardDAO = new BoardDAO();
			BoardBean boardBean = new BoardBean();
			boardBean = boardDAO.select1(title, date);
			
			System.out.println(boardBean);
			request.setAttribute("board", boardBean);
		}else if(uri.equals("/boardSelectAll.a")) {
			path="/notice_list.jsp";
			
			int page=1;
		
			
			if(request.getParameter("page")!=null) {
				page=Integer.parseInt(request.getParameter("page"));
			}
			
			BoardDAO boardDAO = new BoardDAO(); 
			int listCount=boardDAO.getListCount(); //��ü ����
			System.out.println("전체행갯수 :" +listCount);
			ArrayList<BoardBean> list=boardDAO.selectAll(page); //10���� ����

			int maxPage=(int)((double)listCount/10+0.9);
			int startPage=((int)((double)page/10+0.9)-1)*10+1;
			int endPage=startPage+10-1;
			
			if(endPage>maxPage)endPage=maxPage;
			
			PageInfo pageInfo=new PageInfo();
			pageInfo.setEndPage(endPage);
			pageInfo.setListCount(listCount);
			pageInfo.setMaxPage(maxPage);
			pageInfo.setPage(page);
			pageInfo.setStartPage(startPage);
						
			request.setAttribute("pageInfo", pageInfo);
			request.setAttribute("list",list);
			
		}else if(uri.equals("/selectIndex.a")) {
			path="/main.jsp";
					
			System.out.println("selectIndex.a 실행");
			
			BoardDAO boardDAO = new BoardDAO(); 
			
			
			ArrayList<BoardBean> list=boardDAO.selectIndex(); 

			
			request.setAttribute("list",list);
			
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

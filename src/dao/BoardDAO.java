package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.BoardBean;
import vo.JoinBean;

public class BoardDAO {
	ArrayList <BoardBean> list=new ArrayList<>();
	Connection conn=null;
	PreparedStatement pstmt=null;
	ResultSet rs=null;

	String driver="oracle.jdbc.driver.OracleDriver";
	String url="jdbc:oracle:thin:@localhost:1521:orcl";

public JoinBean select(String em1, String em2) {
		JoinBean join=new JoinBean();
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, "jho","park");
			System.out.println("DB 연결 성공");

			String sql ="select * from join_tb where jemail1=? and jemail2=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,em1);
			pstmt.setString(2,em2);
			rs=pstmt.executeQuery();				
			
			while(rs.next()){				
				join.setJname(rs.getString("jname"));
				join.setJpass(rs.getString("jpass"));
				join.setJtel(rs.getString("jtel"));
				join.setJemail1(rs.getString("jemail1"));
				join.setJemail2(rs.getString("jemail2"));
				join.setJsex(rs.getString("jsex"));
				join.setJcheck(rs.getString("jcheck"));
				join.setJcontent(rs.getString("jcontent"));
				
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return join;
	}
public BoardBean select1(int num) {
	BoardBean board =new BoardBean();
	try {
		Class.forName(driver);
		conn=DriverManager.getConnection(url, "jho","park");
		System.out.println("DB 연결 성공");

		String sql ="select * from board_tb where bnum=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setInt(1,num);
		
		rs=pstmt.executeQuery();
		
		while(rs.next()) {
			board.setBnum(rs.getInt("bnum"));
			board.setBemail1(rs.getString("bemail1"));
			board.setBdate(rs.getString("bdate"));
			board.setBsubject(rs.getString("bsubject"));
			board.setBtitle(rs.getString("btitle"));
			board.setBfileName(rs.getString("bfileName"));
			board.setBcontent(rs.getString("bcontent"));
		
		}
		rs.close();
		pstmt.close();
		conn.close();
	}catch(Exception e) {
		e.printStackTrace();
	}
	
	return board;
}
	public void insert(BoardBean bd) {
		
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, "jho","park");
			System.out.println("DB 연결 성공");

			String sql ="insert into board_tb values(board_sq.nextval,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,bd.getBemail1());
			pstmt.setString(2,bd.getBsubject());
			pstmt.setString(3,bd.getBtitle());
			pstmt.setString(4,bd.getBfileName());
			pstmt.setString(5,bd.getBcontent());
			pstmt.setString(6,bd.getBdate());
			
			
			pstmt.executeUpdate();
			
			System.out.println("insert 성공");
			
			pstmt.close();
			conn.close();
			

		}catch(Exception e) {
			e.printStackTrace();
		}
		
	
	}public ArrayList<BoardBean> selectAll(int page) {
		

		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,"jho","park");
			System.out.println("DB 연결성공");
			
			int startRow=(page-1)*10;	//���� ����� 10���� ��ȸ
			String sql="select * from board_tb order by bnum desc";
			pstmt=conn.prepareStatement(sql);	
			rs=pstmt.executeQuery();				
			
			while(rs.next()){		
				BoardBean board=new BoardBean();
				board.setBnum(rs.getInt("bnum"));
				board.setBemail1(rs.getString("bemail1"));
				board.setBsubject(rs.getString("bsubject"));
				board.setBtitle(rs.getString("btitle"));
				board.setBfileName(rs.getString("bfileName"));
				board.setBcontent(rs.getString("bcontent"));
				board.setBdate(rs.getString("bdate"));
				
				list.add(board);
			}			
			
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
public ArrayList<BoardBean> selectIndex() {
		

		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,"jho","park");
			System.out.println("DB 연결성공");
			
			
			String sql="select * from (select * from board_tb order by bnum desc) where rownum<6";
			pstmt=conn.prepareStatement(sql);	
			rs=pstmt.executeQuery();				
			
			while(rs.next()){		
				BoardBean board=new BoardBean();
				
				board.setBcontent(rs.getString("bcontent"));
				
				
				list.add(board);
			}			
			
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		
		return list;
	}
	public int getListCount() {
		int listCount=0;
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,"jho","park");
			
			
			String sql="select count(*) from board_tb";
			pstmt=conn.prepareStatement(sql);
			rs=pstmt.executeQuery();				
			
			while(rs.next()){				
				listCount=rs.getInt(1);
			}
			rs.close();
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
		return listCount;
		
	}
	public void delete(String email1, String email2) {
			
		System.out.println(email1);				
		System.out.println(email2);				
		Connection conn=null;
		PreparedStatement pstmt=null;
		
		String driver="oracle.jdbc.driver.OracleDriver";
		String url="jdbc:oracle:thin:@localhost:1521:orcl";
		
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url,"jho","park");
			
			String sql ="delete from join_tb where jemail1=? and jemail2=?";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,email1);
			pstmt.setString(2,email2);
			System.out.println(sql);
			pstmt.executeUpdate();

			
			pstmt.close();
			conn.close();
		}catch(Exception e) {
			e.printStackTrace();
		}
	}
	
	}


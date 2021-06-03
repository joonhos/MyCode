package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import vo.JoinBean;

public class JoinDAO {
	ArrayList <JoinBean> list=new ArrayList<>();
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
public JoinBean select(String em1, String em2, String pass) {
	JoinBean join=new JoinBean();
	try {
		Class.forName(driver);
		conn=DriverManager.getConnection(url, "jho","park");
		System.out.println("DB 연결 성공");

		String sql ="select * from join_tb where jemail1=? and jemail2=? and jpass=?";
		pstmt=conn.prepareStatement(sql);
		pstmt.setString(1,em1);
		pstmt.setString(2,em2);
		pstmt.setString(3,pass);
		rs=pstmt.executeQuery();
		
		while(rs.next()) {
			join.setJnum(rs.getInt("jnum"));
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
	public void insert(JoinBean jb) {
		
		try {
			Class.forName(driver);
			conn=DriverManager.getConnection(url, "jho","park");
			System.out.println("DB 연결 성공");

			String sql ="insert into join_tb values(join_seq.nextval,?,?,?,?,?,?,?,?)";
			pstmt=conn.prepareStatement(sql);
			pstmt.setString(1,jb.getJname());
			pstmt.setString(2,jb.getJpass());
			pstmt.setString(3,jb.getJtel());
			pstmt.setString(4,jb.getJemail1());
			pstmt.setString(5,jb.getJemail2());
			pstmt.setString(6,jb.getJsex());
			pstmt.setString(7,jb.getJcheck());
			pstmt.setString(8,jb.getJcontent());
			
			pstmt.executeUpdate();
			
			
			
			pstmt.close();
			conn.close();
			

		}catch(Exception e) {
			e.printStackTrace();
		}
		
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


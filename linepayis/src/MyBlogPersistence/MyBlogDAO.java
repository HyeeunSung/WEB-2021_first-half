package MyBlogPersistence;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import MyBlogDomain.MyBlogVO;

public class MyBlogDAO {
	
	private Connection conn;
	private ResultSet rs;

	private void connect() {
		try {
			String dbURL = "jdbc:mysql://localhost:3306/jspdb?useSSL=false&serverTimezone=UTC&useUnicode=true&characterEncoding=utf-8";
			String dbID = "jspbook";
			String dbPassword = "passwd";
			Class.forName("com.mysql.cj.jdbc.Driver");
			conn = DriverManager.getConnection(dbURL, dbID, dbPassword);
		} catch (Exception e) {
			e.printStackTrace();
		}
	}
	
	private void disconnect() {
		// TODO Auto-generated method stub
		try {
			conn.close();
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
	}
	
	/*ㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡㅡ
	 * 날짜를 받아오는 함수
	 */
	public String getDate() {
		connect();
		String sql = "SELECT NOW()";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			if(rs.next()) {
				return rs.getString(1);	
			}			
		}catch (Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return ""; //데이터베이스오류
	}
	
	/*
	 * 리스트 출력
	 */
	public List<MyBlogVO> getMyBlogList() {
		connect();
		ArrayList<MyBlogVO> addrlist = new ArrayList<MyBlogVO>();
		String sql = "select blogIdx, blogTitle, blogContent, writer, writeDate from blog where useYN='Y'";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			rs = pstmt.executeQuery();
			while(rs.next()) {
				MyBlogVO myblogvo = new MyBlogVO();
				myblogvo.setBlogIdx(rs.getInt(1));
				myblogvo.setBlogTitle(rs.getString(2));
				myblogvo.setBlogContent(rs.getString(3));
				myblogvo.setWriter(rs.getString(4));
				myblogvo.setWriteDate(rs.getString(5));
				addrlist.add(myblogvo);
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return addrlist;
	}
	/*
	 * 게시글 상세 출력
	 */
	public List<MyBlogVO> getBlogDetail(MyBlogVO myblogvo) {
		connect();
		ArrayList<MyBlogVO> addrlist = new ArrayList<MyBlogVO>();
		String sql = "select * from blog where blogIdx=?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setInt(1, myblogvo.getBlogIdx());
			rs = pstmt.executeQuery();
			
			while(rs.next()) {
				myblogvo = new MyBlogVO();
				myblogvo.setBlogIdx(rs.getInt(1));
				myblogvo.setBlogTitle(rs.getString(2));
				myblogvo.setBlogContent(rs.getString(3));
				myblogvo.setWriter(rs.getString(4));
				myblogvo.setWriteDate(rs.getString(5));
				addrlist.add(myblogvo);
			}
			rs.close();
		}catch(Exception e) {
			e.printStackTrace();
		}finally {
			disconnect();
		}
		return addrlist;
	}
	/*
	 * 게시글 등록
	 */
	public boolean blogWrite(MyBlogVO myblogvo) {
		// TODO Auto-generated method stub
		connect();
		String sql = "INSERT INTO blog(blogTitle, blogContent, writer, writeDate)VALUES(?,?,?,?)";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, myblogvo.getBlogTitle());
			pstmt.setString(2, myblogvo.getBlogContent());
			pstmt.setString(3, myblogvo.getWriter());
			pstmt.setString(4, getDate());
			pstmt.executeUpdate();
			
		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}
		return true;
	}
	/*
	 * 게시글 수정
	 */
	public boolean blogUpdate(MyBlogVO myblogvo) {
		// TODO Auto-generated method stub
		connect();
		String sql = "UPDATE blog SET blogTitle = ?, blogContent = ?, modifier = ?, modifyDate = ? WHERE blogIdx = ?";
		try {
			PreparedStatement pstmt = conn.prepareStatement(sql);
			pstmt.setString(1, myblogvo.getBlogTitle());
			pstmt.setString(2, myblogvo.getBlogContent());
			pstmt.setString(3, myblogvo.getModifier());
			pstmt.setString(4, getDate());
			pstmt.setInt(5, myblogvo.getBlogIdx());
			pstmt.executeUpdate();

		}catch(Exception e) {
			e.printStackTrace();
			return false;
		}finally {
			disconnect();
		}
		return true;
	}
	/*
	 * 게시글 삭제
	 */
	public boolean blogDelete(MyBlogVO myblogvo) { 
		connect();
		String SQL = "UPDATE blog SET useYN='N' WHERE blogIdx = ?";
		
		try {
			PreparedStatement pstmt = conn.prepareStatement(SQL);
			pstmt.setInt(1, myblogvo.getBlogIdx());
			pstmt.executeUpdate();
			return true;
		} catch (Exception e) {
			e.printStackTrace();
			return false;
		}
		
	}
}

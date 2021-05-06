package MyBlogController;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.List;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import MyBlogDomain.MyBlogVO;
import MyBlogService.MyBlogService;

/**
 * Servlet implementation class Servlet
 */
@WebServlet("/blogServlet")
public class MyBlogServlet extends HttpServlet {
	private static final long serialVersionUID = 1L;
	
	MyBlogService service = new MyBlogService();
	
    /**
     * @see HttpServlet#HttpServlet()
     */
    public MyBlogServlet() {
        super();
    }
	protected void doGet( HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String key = request.getParameter("key");
		//게시글 작성 view
		if (key.equals("write")) {
			RequestDispatcher view = request.getRequestDispatcher("/views/writeForm.jsp");
			view.forward(request, response);}
		//나의 게시글 리스트 출력 do
		if (key.equals("list")) {getBlogList(request, response);}
		//게시글 상세 출력 do
		if (key.equals("detail")) {getBlogDetail(request, response);}
		//게시글 삭제
		if (key.equals("delete")) {blogDelete(request, response);}
		
	}
	
	protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		
		request.setCharacterEncoding("UTF-8");
		response.setCharacterEncoding("UTF-8");
	    response.setContentType("text/html;charset=utf-8");
	    
		String key = request.getParameter("key");
		//게시글 등록
		if (key.equals("write")) {blogWrite(request, response);}
		//게시글 수정
		if (key.equals("update")) {blogUpdate(request, response);}
	}
	/* 나의
	 * 게시글 리스트 출력 
	 * 
	 */ 
	private void getBlogList(HttpServletRequest request, HttpServletResponse response) {

		try {
			List<MyBlogVO> blogList = service.getBlogList();
			
			System.out.println("blogList size : " + blogList.size());
			request.setAttribute("blogList", blogList);
			RequestDispatcher view = request.getRequestDispatcher("/views/postList.jsp");
			view.forward(request, response);
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/* 
	 * 게시글 상세 출력 
	 * 
	 */ 
	private void getBlogDetail(HttpServletRequest request, HttpServletResponse response) {
		
		MyBlogVO myblogvo = new MyBlogVO();
		int blogIdx = Integer.parseInt(request.getParameter("blogIdx"));
		myblogvo.setBlogIdx(blogIdx);
		System.out.println("blogIdx : " + myblogvo.getBlogIdx());
		try {
			List<MyBlogVO> blogDetail = service.getBlogDetail(myblogvo);
			
			System.out.println("blogDetail size : " + blogDetail.size());
			request.setAttribute("blogDetail", blogDetail);
			
			if(request.getParameter("update") == null) {
				RequestDispatcher view = request.getRequestDispatcher("/views/postDetail.jsp");
				view.forward(request, response);
			}
			else if(request.getParameter("update").equals("Y")) {
				RequestDispatcher view = request.getRequestDispatcher("/views/postUpdate.jsp");
				view.forward(request, response);
			}
			
		
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/* 
	 * 게시글 등록
	 *  
	 */ 
	private void blogWrite(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("블로그 등록 시작");
		MyBlogVO myblogvo = new MyBlogVO();

		myblogvo.setWriter(request.getParameter("writer"));
		myblogvo.setBlogTitle(request.getParameter("blogTitle"));
		myblogvo.setBlogContent(request.getParameter("blogContent"));
		
		try {
			service.blogWrite(myblogvo);
			System.out.println("등록성공");
			response.sendRedirect("/linepayis/blogServlet?key=list");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	
	/* 
	 * 게시글 수정
	 *  
	 */ 
	private void blogUpdate(HttpServletRequest request, HttpServletResponse response) {
		System.out.println("게시글 수정 시작");
		MyBlogVO myblogvo = new MyBlogVO();
		
		int blogIdx = Integer.parseInt(request.getParameter("blogIdx"));
		
		myblogvo.setBlogIdx(blogIdx);
		myblogvo.setModifier(request.getParameter("writer"));
		myblogvo.setBlogTitle(request.getParameter("blogTitle"));
		myblogvo.setBlogContent(request.getParameter("blogContent"));
		
		System.out.println("Title: " + myblogvo.getBlogTitle());
		System.out.println("Content: " + myblogvo.getBlogContent());
		
		try {
			service.blogUpdate(myblogvo);
			
			System.out.println("수정성공");
			response.sendRedirect("/linepayis/blogServlet?key=list");
			
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}
	/* 
	 * 게시글 삭제
	 *  
	 */ 
	private void blogDelete(HttpServletRequest request, HttpServletResponse response) {
		MyBlogVO myblogvo = new MyBlogVO();
		int blogIdx = Integer.parseInt(request.getParameter("blogIdx"));
		myblogvo.setBlogIdx(blogIdx);
		System.out.println("blogIdx : "+ myblogvo.getBlogIdx());
		try {
			service.blogDelete(myblogvo);
			System.out.println("삭제성공");
			response.sendRedirect("/linepayis/blogServlet?key=list");
		}catch(Exception e) {
			e.printStackTrace();
		}
		
	}

}

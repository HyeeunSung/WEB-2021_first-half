package MyBlogService;

import java.util.List;

import MyBlogDomain.MyBlogVO;
import MyBlogPersistence.MyBlogDAO;

public class MyBlogService {

	MyBlogDAO myblogdao = new MyBlogDAO();
	
	
	/*
	 * 게시글 리스트
	 *
	 */
	public List<MyBlogVO> getBlogList() {
		
		
		return myblogdao.getMyBlogList();
	}
	
	/*
	 * 게시글 상세
	 *
	 */
	public List<MyBlogVO> getBlogDetail(MyBlogVO myblogvo) {
		
		
		return myblogdao.getBlogDetail(myblogvo);
	}
	
	/*
	 * 게시글 등록
	 *
	 */
	public boolean blogWrite(MyBlogVO myblogvo) {
		
		return myblogdao.blogWrite(myblogvo);
	}
	
	/*
	 * 게시글 수정
	 *
	 */
	public boolean blogUpdate(MyBlogVO myblogvo) {
		System.out.println("수정 서비스");
		return myblogdao.blogUpdate(myblogvo);
	}
	
	/*
	 * 게시글 삭제
	 *
	 */
	public boolean blogDelete(MyBlogVO myblogvo) {
		
		return myblogdao.blogDelete(myblogvo);
	}
	
}

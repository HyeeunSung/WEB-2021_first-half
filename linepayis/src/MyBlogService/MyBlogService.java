package MyBlogService;

import java.util.List;

import MyBlogDomain.MyBlogVO;
import MyBlogPersistence.MyBlogDAO;

public class MyBlogService {

	MyBlogDAO myblogdao = new MyBlogDAO();
	
	
	/*
	 * �Խñ� ����Ʈ
	 *
	 */
	public List<MyBlogVO> getBlogList() {
		
		
		return myblogdao.getMyBlogList();
	}
	
	/*
	 * �Խñ� ��
	 *
	 */
	public List<MyBlogVO> getBlogDetail(MyBlogVO myblogvo) {
		
		
		return myblogdao.getBlogDetail(myblogvo);
	}
	
	/*
	 * �Խñ� ���
	 *
	 */
	public boolean blogWrite(MyBlogVO myblogvo) {
		
		return myblogdao.blogWrite(myblogvo);
	}
	
	/*
	 * �Խñ� ����
	 *
	 */
	public boolean blogUpdate(MyBlogVO myblogvo) {
		System.out.println("���� ����");
		return myblogdao.blogUpdate(myblogvo);
	}
	
	/*
	 * �Խñ� ����
	 *
	 */
	public boolean blogDelete(MyBlogVO myblogvo) {
		
		return myblogdao.blogDelete(myblogvo);
	}
	
}

package MyBlogDomain;

public class MyBlogVO {
	private int blogIdx;		//게시글 idx
	private String blogTitle;	//게시글 제목
	private String blogContent;	//게시글 내용
	private String writer;		//작성자
	private String writeDate;	//작성 일시
	private String modifier;	//수정자
	private String modifyDate;	//수정일시
	private String useYN;		//사용여부 사용: Y, 삭제: N
	
	
	public int getBlogIdx() {
		return blogIdx;
	}
	public void setBlogIdx(int blogIdx) {
		this.blogIdx = blogIdx;
	}
	public String getBlogTitle() {
		return blogTitle;
	}
	public void setBlogTitle(String blogTitle) {
		this.blogTitle = blogTitle;
	}
	public String getBlogContent() {
		return blogContent;
	}
	public void setBlogContent(String blogContent) {
		this.blogContent = blogContent;
	}
	public String getWriter() {
		return writer;
	}
	public void setWriter(String writer) {
		this.writer = writer;
	}
	public String getWriteDate() {
		return writeDate;
	}
	public void setWriteDate(String writeDate) {
		this.writeDate = writeDate;
	}
	public String getModifier() {
		return modifier;
	}
	public void setModifier(String modifier) {
		this.modifier = modifier;
	}
	public String getModifyDate() {
		return modifyDate;
	}
	public void setModifyDate(String modifyDate) {
		this.modifyDate = modifyDate;
	}
	public String getUseYN() {
		return useYN;
	}
	public void setUseYN(String useYN) {
		this.useYN = useYN;
	}
	
	
	
}

package MyBlogDomain;

public class MyBlogVO {
	private int blogIdx;		//�Խñ� idx
	private String blogTitle;	//�Խñ� ����
	private String blogContent;	//�Խñ� ����
	private String writer;		//�ۼ���
	private String writeDate;	//�ۼ� �Ͻ�
	private String modifier;	//������
	private String modifyDate;	//�����Ͻ�
	private String useYN;		//��뿩�� ���: Y, ����: N
	
	
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

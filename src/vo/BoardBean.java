package vo;

public class BoardBean {
	
	private int bnum;
	private String bemail1;
	private String bsubject;		//말머리 선택임
	private String btitle;
	private String bfileName;
	private String bcontent;
	private String bdate;
	
	public BoardBean(){}
	public BoardBean(int bnum, String bemail1, String bsubject, String btitle, String bfileName, String bcontent,
			String bdate) {
		super();
		this.bnum = bnum;
		this.bemail1 = bemail1;
		this.bsubject = bsubject;
		this.btitle = btitle;
		this.bfileName = bfileName;
		this.bcontent = bcontent;
		this.bdate = bdate;
	}
	public int getBnum() {
		return bnum;
	}
	public void setBnum(int bnum) {
		this.bnum = bnum;
	}
	public String getBemail1() {
		return bemail1;
	}
	public void setBemail1(String bemail1) {
		this.bemail1 = bemail1;
	}
	public String getBsubject() {
		return bsubject;
	}
	public void setBsubject(String subject) {
		this.bsubject = subject;
	}
	public String getBtitle() {
		return btitle;
	}
	public void setBtitle(String btitle) {
		this.btitle = btitle;
	}
	public String getBfileName() {
		return bfileName;
	}
	public void setBfileName(String bfileName) {
		this.bfileName = bfileName;
	}
	public String getBcontent() {
		return bcontent;
	}
	public void setBcontent(String bcontent) {
		this.bcontent = bcontent;
	}
	public String getBdate() {
		return bdate;
	}
	public void setBdate(String bdate) {
		this.bdate = bdate;
	}
	@Override
	public String toString() {
		return "BoardBean [bnum=" + bnum + ", bemail1=" + bemail1 + ", bsubject=" + bsubject + ", btitle=" + btitle
				+ ", bfileName=" + bfileName + ", bcontent=" + bcontent + ", bdate=" + bdate + "]";
	}
	
	
	
}
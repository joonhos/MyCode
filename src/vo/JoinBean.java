package vo;

public class JoinBean {
	private int jnum;
	private String jname;
	private String jpass;
	private String jtel;
	private String jemail1;
	private String jemail2;
	private String jsex;
	private String jcheck;
	private String jcontent;
	
	public JoinBean() {}

	public JoinBean(int jnum, String jname, String jpass, String jtel, String jemail1, String jemail2, String jsex,
			String jcheck, String jcontent) {
		super();
		this.jnum = jnum;
		this.jname = jname;
		this.jpass = jpass;
		this.jtel = jtel;
		this.jemail1 = jemail1;
		this.jemail2 = jemail2;
		this.jsex = jsex;
		this.jcheck = jcheck;
		this.jcontent = jcontent;
	}

	public int getJnum() {
		return jnum;
	}

	public void setJnum(int jnum) {
		this.jnum = jnum;
	}

	public String getJname() {
		return jname;
	}

	public void setJname(String jname) {
		this.jname = jname;
	}

	public String getJpass() {
		return jpass;
	}

	public void setJpass(String jpass) {
		this.jpass = jpass;
	}

	public String getJtel() {
		return jtel;
	}

	public void setJtel(String jtel) {
		this.jtel = jtel;
	}

	public String getJemail1() {
		return jemail1;
	}

	public void setJemail1(String jemail1) {
		this.jemail1 = jemail1;
	}

	public String getJemail2() {
		return jemail2;
	}

	public void setJemail2(String jemail2) {
		this.jemail2 = jemail2;
	}

	public String getJsex() {
		return jsex;
	}

	public void setJsex(String jsex) {
		this.jsex = jsex;
	}

	public String getJcheck() {
		return jcheck;
	}

	public void setJcheck(String jcheck) {
		this.jcheck = jcheck;
	}

	public String getJcontent() {
		return jcontent;
	}

	public void setJcontent(String jcontent) {
		this.jcontent = jcontent;
	}

	@Override
	public String toString() {
		return "JoinBean [jnum=" + jnum + ", jname=" + jname + ", jpass=" + jpass + ", jtel=" + jtel + ", jemail1="
				+ jemail1 + ", jemail2=" + jemail2 + ", jsex=" + jsex + ", jcheck=" + jcheck + ", jcontent=" + jcontent
				+ "]";
	}

	
	

	
	}
	
	
	


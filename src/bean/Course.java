package bean;

public class Course {
	private static final long serialVersionUID = 1L;
	String cno;
	String cname;
	int ccredit;
	int semester;
	public String getCno() {
		return cno;
	}
	public void setCno(String cno) {
		this.cno = cno;
	}
	public String getCname() {
		return cname;
	}
	public void setCname(String cname) {
		this.cname = cname;
	}
	public int getCcredit() {
		return ccredit;
	}
	public void setCcredit(int ccredit) {
		this.ccredit = ccredit;
	}
	public int getSemester() {
		return semester;
	}
	public void setSemester(int semester) {
		this.semester = semester;
	}
	public static long getSerialversionuid() {
		return serialVersionUID;
	}
	
}

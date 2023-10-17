package resultmanagment.model;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;

@Entity
public class Result {

	@Id
	@GeneratedValue(strategy = GenerationType.AUTO)
	private int id;
	private String name;
	private String fname;
	private String rollNo;
	private long english;
	private long urdu;
	private long math;
	private long sindhi;
	private long islamiat;
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getFname() {
		return fname;
	}
	public void setFname(String fname) {
		this.fname = fname;
	}
	public String getRollNo() {
		return rollNo;
	}
	public void setRollNo(String rollNo) {
		this.rollNo = rollNo;
	}
	public long getEnglish() {
		return english;
	}
	public void setEnglish(long english) {
		this.english = english;
	}
	public long getUrdu() {
		return urdu;
	}
	public void setUrdu(long urdu) {
		this.urdu = urdu;
	}
	public long getMath() {
		return math;
	}
	public void setMath(long math) {
		this.math = math;
	}
	public long getSindhi() {
		return sindhi;
	}
	public void setSindhi(long sindhi) {
		this.sindhi = sindhi;
	}
	public long getIslamiat() {
		return islamiat;
	}
	public void setIslamiat(long islamiat) {
		this.islamiat = islamiat;
	}
	
	public Result(int id, String name, String fname, String rollNo, long english, long urdu, long math, long sindhi,
			long islamiat) {
		super();
		this.id = id;
		this.name = name;
		this.fname = fname;
		this.rollNo = rollNo;
		this.english = english;
		this.urdu = urdu;
		this.math = math;
		this.sindhi = sindhi;
		this.islamiat = islamiat;
	}
	
	
	
	public Result() {
		super();
		// TODO Auto-generated constructor stub
	}
	@Override
	public String toString() {
		return "Result [id=" + id + ", name=" + name + ", fname=" + fname + ", rollNo=" + rollNo + ", english="
				+ english + ", urdu=" + urdu + ", math=" + math + ", sindhi=" + sindhi + ", islamiat=" + islamiat + "]";
	}
	
	
}

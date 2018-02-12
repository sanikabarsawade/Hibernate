package com.sampleproject;
import javax.persistence.Entity;
import javax.persistence.Id;
import javax.persistence.Table;
@Entity(name="UserDetails")
@Table(name="UserDetails")
public class UserDetails {
	@Id
	private Integer empno;
	private String ename;
	private Double sal;            
	public  UserDetails() {}  
	    public  UserDetails(int no,String nm,double sl)
	    {
	        this.empno=no;
	        this.ename=nm;
	        this.sal=sl;
	    }    
	    public Integer getEmpno() {
	        return empno;
	    }
	    public void setEmpno(Integer empno) {
	        this.empno = empno;
	    }  
	    public String getEname() {
	        return ename;
	    }  
	    public void setEname(String ename) {
	        this.ename = ename;
	    }  
	    public Double getSal() {
	        return sal;
	    }
	    public void setSal(Double sal) {
	        this.sal = sal;
	    }
	}  

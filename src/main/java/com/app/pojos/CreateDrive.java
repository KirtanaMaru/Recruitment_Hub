package com.app.pojos;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.OneToOne;
import javax.persistence.Table;

@Entity
@Table(name = "CreateDrive")
public class CreateDrive extends BaseEntity {
	@Column(length = 1000)
	private String cname;
	@Column(length = 1000)
	private String package1;
	@Column(length = 1000)
	private String location;
	@Column(length = 1000)
	private String link;
	@Column(length = 1000)
	private String criteria;
	@Column(length = 1000)
	private String jD;
	@Column(length = 1000)
	private String process;
	@Column(length = 1000)
	private String jobdesignation;
	@Column(length = 1000)
	private String date;
	
	
	
	@ManyToOne
	@JoinColumn(name = "tpo_id")
	private Tpo tpo_id;
	
	public CreateDrive() {
		System.out.println("Create drive Table Created !!");
		}


	

	public String getJobdesignation() {
		return jobdesignation;
	}




	public void setJobdesignation(String jobdesignation) {
		this.jobdesignation = jobdesignation;
	}




	public String getDate() {
		return date;
	}




	public void setDate(String date) {
		this.date = date;
	}




	public CreateDrive(String cname, String package1, String location, String link, String criteria, String jD,
			String process, String jobdesignation, String date) {
		super();
		this.cname = cname;
		this.package1 = package1;
		this.location = location;
		this.link = link;
		this.criteria = criteria;
		this.jD = jD;
		this.process = process;
		this.jobdesignation = jobdesignation;
		this.date = date;
		
	}




	@Override
	public String toString() {
		return "CreateDrive [cname=" + cname + ", package1=" + package1 + ", location=" + location + ", link=" + link
				+ ", criteria=" + criteria + ", jD=" + jD + ", process=" + process + ", jobdesignation="
				+ jobdesignation + ", date=" + date + ", tpo_id=" + tpo_id + "]";
	}

	public String getCname() {
		return cname;
	}

	public void setCname(String cname) {
		this.cname = cname;
	}

	public String getPackage1() {
		return package1;
	}

	public void setPackage1(String package1) {
		this.package1 = package1;
	}

	public String getLocation() {
		return location;
	}

	public void setLocation(String location) {
		this.location = location;
	}

	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}

	public String getCriteria() {
		return criteria;
	}

	public void setCriteria(String criteria) {
		this.criteria = criteria;
	}

	public String getjD() {
		return jD;
	}

	public void setjD(String jD) {
		this.jD = jD;
	}

	public String getProcess() {
		return process;
	}

	public void setProcess(String process) {
		this.process = process;
	}

	public Tpo getTpo_id() {
		return tpo_id;
	}

	public void setTpo_id(Tpo tpo_id) {
		this.tpo_id = tpo_id;
	}
	
	
}

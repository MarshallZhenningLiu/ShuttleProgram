package com.ait.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "shuttlemissions")
@XmlRootElement
public class Mission {
    
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String orbitor;
    private String name;
    private String launch;
    private String landing;
    
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getOrbitor() {
		return orbitor;
	}
	public void setOrbitor(String orbitor) {
		this.orbitor = orbitor;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getLaunch() {
		return launch;
	}
	public void setLaunch(String launch) {
		this.launch = launch;
	}
	public String getLanding() {
		return landing;
	}
	public void setLanding(String landing) {
		this.landing = landing;
	}
    
    
    
    
}
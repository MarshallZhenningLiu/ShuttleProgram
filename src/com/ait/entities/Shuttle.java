package com.ait.entities;

import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;
import javax.xml.bind.annotation.XmlRootElement;

@Entity
@Table(name = "shuttles")
@XmlRootElement
public class Shuttle {
    
    @Id @GeneratedValue(strategy=GenerationType.IDENTITY)
    private int id;
    private String name;
    private String image_thumb;
    private String image_main;
    private String image_caption;
    private String description;
    
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
	public String getImage_thumb() {
		return image_thumb;
	}
	public void setImage_thumb(String image_thumb) {
		this.image_thumb = image_thumb;
	}
	public String getImage_main() {
		return image_main;
	}
	public void setImage_main(String image_main) {
		this.image_main = image_main;
	}
	public String getImage_caption() {
		return image_caption;
	}
	public void setImage_caption(String image_caption) {
		this.image_caption = image_caption;
	}
	public String getDescription() {
		return description;
	}
	public void setDescription(String description) {
		this.description = description;
	}
    
    
    
}
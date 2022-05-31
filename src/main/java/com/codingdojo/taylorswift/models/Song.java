package com.codingdojo.taylorswift.models;

import java.util.Date;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.FetchType;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.JoinColumn;
import javax.persistence.ManyToOne;
import javax.persistence.PrePersist;
import javax.persistence.PreUpdate;
import javax.persistence.Table;
import javax.validation.constraints.NotEmpty;
import javax.validation.constraints.Size;

import org.springframework.format.annotation.DateTimeFormat;



@Entity
@Table (name="songs")
public class Song {
	
	@Id
    @GeneratedValue(strategy = GenerationType.IDENTITY)
	private Long id;
	
	@NotEmpty
    @Size(min=2, message="Song must be more than 2 Characters")
	private String album;
	
	@NotEmpty
    @Size(min=2, message="Song must be more than 2 Characters")
	private String songname;
	
	@NotEmpty
    @Size(min=2, message="Quote must be more than 2 Characters")
	private String quote;
	
	@NotEmpty
    @Size(min=2,  message="Lyric must be more than 2 Characters")
	private String lyric;
	
	@NotEmpty
    @Size(min=2, message="Category must be more than 2 Characters")
	private String category;

	
	@Column(updatable=false)
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date createdAt;
	    
	@DateTimeFormat(pattern="yyyy-MM-dd")
	private Date updatedAt;
	
	@ManyToOne(fetch=FetchType.LAZY)
	@JoinColumn(name="user_id")
	private User user;

	
	
	
	
	
	public Song(Long id, @NotEmpty @Size(min = 2, message = "Song must be more than 2 Characters") String album,
			@NotEmpty @Size(min = 2, message = "Song must be more than 2 Characters") String songname,
			@NotEmpty @Size(min = 2, message = "Quote must be more than 2 Characters") String quote,
			@NotEmpty @Size(min = 2, message = "Lyric must be more than 2 Characters") String lyric,
			@NotEmpty @Size(min = 2, message = "Category must be more than 2 Characters") String category,
			Date createdAt, Date updatedAt, User user) {
		super();
		this.id = id;
		this.album = album;
		this.songname = songname;
		this.quote = quote;
		this.lyric = lyric;
		this.category = category;
		this.createdAt = createdAt;
		this.updatedAt = updatedAt;
		this.user = user;
	}
	public Song(@NotEmpty @Size(min = 2, message = "Song must be more than 2 Characters") String album,
			@NotEmpty @Size(min = 2, message = "Song must be more than 2 Characters") String songname,
			@NotEmpty @Size(min = 2, message = "Quote must be more than 2 Characters") String quote,
			@NotEmpty @Size(min = 2, message = "Lyric must be more than 2 Characters") String lyric,
			@NotEmpty @Size(min = 2, message = "Category must be more than 2 Characters") String category, User user) {
		super();
		this.album = album;
		this.songname = songname;
		this.quote = quote;
		this.lyric = lyric;
		this.category = category;
		this.user = user;
	}
	public Song() {
		super();
	}
	public Long getId() {
		return id;
	}
	public void setId(Long id) {
		this.id = id;
	}
	public String getAlbum() {
		return album;
	}
	public void setAlbum(String album) {
		this.album = album;
	}
	public String getSongname() {
		return songname;
	}
	public void setSongname(String songname) {
		this.songname = songname;
	}
	public String getQuote() {
		return quote;
	}
	public void setQuote(String quote) {
		this.quote = quote;
	}
	public String getLyric() {
		return lyric;
	}
	public void setLyric(String lyric) {
		this.lyric = lyric;
	}
	public String getCategory() {
		return category;
	}
	public void setCategory(String category) {
		this.category = category;
	}
	public Date getCreatedAt() {
		return createdAt;
	}
	public void setCreatedAt(Date createdAt) {
		this.createdAt = createdAt;
	}
	public Date getUpdatedAt() {
		return updatedAt;
	}
	public void setUpdatedAt(Date updatedAt) {
		this.updatedAt = updatedAt;
	}
	public User getUser() {
		return user;
	}
	public void setUser(User user) {
		this.user = user;
	}
	@PrePersist
	protected void onCreate(){
	    this.createdAt = new Date();
	    }
	@PreUpdate
    protected void onUpdate(){
        this.updatedAt = new Date();
    }
	

	
	
	
	
	
	
	
	

}

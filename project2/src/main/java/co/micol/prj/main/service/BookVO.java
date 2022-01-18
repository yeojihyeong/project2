package co.micol.prj.main.service;


import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class BookVO {
	private String book_isbn; 
	private String book_name; 
	private String book_content;
	private String book_write; 
	private int book_page;
	private String book_publis;
	private String book_picture;
	private String book_pfile; 
	private double book_review;
	private int book_cnt; 
	private String book_cheonggu; 
	
}

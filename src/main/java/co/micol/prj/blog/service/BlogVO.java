package co.micol.prj.blog.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BlogVO {
	private String blog_id;
	private String member_id;
	private String book_isbn;
	private String review_title;
	private String review_content;
	private String review_date;
	private String review_rating;
	private int review_cnt;
	
	//°Ë»ö¾î
	private String searchValue;
	
	public String getSearchValue() {
		return searchValue;	
	}
	
	public void setSearchValue(String searchValue) {
		this.searchValue = searchValue;
	}
}

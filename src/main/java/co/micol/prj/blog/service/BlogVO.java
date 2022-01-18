package co.micol.prj.blog.service;

import lombok.Data;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
@Data
public class BlogVO {
	private String blog_id;
	private String member_id;
	private String book_isbn;
	private String review_title;
	private String review_content;
	private String review_date;
	private int review_rating;
	private int review_cnt;
	private int review_like;
	
	private String searchValue;
	

	private BookVO bookVO;
}

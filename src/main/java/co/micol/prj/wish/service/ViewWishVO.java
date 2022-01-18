package co.micol.prj.wish.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ViewWishVO {
	private String wish_id;
	private String member_id;
	private String book_isbn;
	private String book_name;
	private String book_write;
	private String book_picture;
	private String book_pfile;
}

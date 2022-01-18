package co.micol.prj.onread.service;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class ViewOnreadVO {
	private String onread_id;
	private String member_id;
	private String book_isbn;
	private String book_name;
	private String book_write;
	private String book_pfile;
	private String book_picture;
}

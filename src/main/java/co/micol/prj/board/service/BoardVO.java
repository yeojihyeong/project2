package co.micol.prj.board.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;
import lombok.ToString;

@Getter
@Setter
@ToString
public class BoardVO {
	private String board_num;
	private String board_id;
	private String board_title;
	private String board_content;
	private Date board_date;
	private String board_picture;
	private String board_pfile;
}

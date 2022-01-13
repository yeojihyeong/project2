package co.micol.prj.bcomment.service;

import java.sql.Date;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BcommentVO {
	private String comment_no;
	private String board_num;
	private String grp;
	private String grps;
	private String grpl;
	private String writer;
	private String content;
	private Date wdate;
}

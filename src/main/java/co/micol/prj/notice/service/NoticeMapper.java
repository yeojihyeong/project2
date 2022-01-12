package co.micol.prj.notice.service;

import java.util.List;

public interface NoticeMapper {
	List<NoticeVO> noticeSelectList();
	NoticeVO noticeSelect(NoticeVO notice);
	int noticeInsert(NoticeVO notice);
	int noticeUpdate(NoticeVO notice);
	int noticeDelete(NoticeVO notice);
}
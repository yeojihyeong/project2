package co.micol.prj.notice.web;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.notice.service.NoticeService;
import co.micol.prj.notice.service.NoticeVO;

@Controller
public class NoticeController {
	@Autowired
	private NoticeService noticeDao;
	
	@RequestMapping("noticeList.do")
	public String noticeSelectList(Model model) {
		model.addAttribute("notices", noticeDao.noticeSelectList());
		return "ogani/notice/NoticeList";
	}
	
	@RequestMapping("noticeInsert.do")
	public String noticeInsert(Model model, NoticeVO notice) {
		model.addAttribute("insert", noticeDao.noticeInsert(notice));
		model.addAttribute("notices", noticeDao.noticeSelectList());
		return "ogani/notice/noticeInsertSuccess";
	}
	
	@RequestMapping("noticeInsertPage.do")
	public String noticeInsertPage() {
		return "ogani/notice/noticeInsert";
	}
	
	@RequestMapping("noticeDetailPage.do")
	public String noticeDetailPage(NoticeVO notice, Model model) {
		model.addAttribute("noticeDetail", noticeDao.noticeSelect(notice));
		return "ogani/notice/noticeDetailPage";
	}
	
	@RequestMapping("noticeUpdate.do")
	public String noticeUpdate(NoticeVO notice, Model model) {
		model.addAttribute(noticeDao.noticeUpdate(notice));
		return "ogani/notice/noticeUpdateSuccess";
	}
	
	@RequestMapping("noticeUpdatePage.do")
	public String noticeUpdatePage(Model model, NoticeVO notice) {
		model.addAttribute("notice", noticeDao.noticeSelect(notice));
		return "ogani/notice/noticeUpdate";
	}
	
	@RequestMapping("noticeDelete.do")
	public String noticeDelete(Model model, NoticeVO notice) {
		model.addAttribute(noticeDao.noticeDelete(notice));
		return "ogani/notice/noticeDeleteSuccess";
	}
	
	@RequestMapping("/adminNoticeSelectList.do")
	public String adminNoticeSelectList(Model model) {
		model.addAttribute("notices", noticeDao.noticeSelectList());
		return "admin/notice/noticeSelectList";
	}
	
	@RequestMapping("/noticeSearch.do")
	public String noticeSearch(@Param("notice_num") int notice_num, NoticeVO notice, Model model){
		model.addAttribute("notice", noticeDao.noticeSearch(notice_num));
		System.out.println(notice);
		System.out.println(notice_num);
		return "admin/notice/noticeSearch";
	}
	
	@RequestMapping("/adminNoticeUpdate1.do")
	public String adminNoticeUpdate1(@Param("notice_num") int notice_num, NoticeVO notice, Model model) {
	
		model.addAttribute("notice",noticeDao.noticeSearch(notice_num));
		return "admin/notice/noticeUpdateForm";
	}
	
	@RequestMapping("/adminnoticeInsertForm.do")
	public String adminnoticeInsertForm() {
		return "admin/notice/noticeInserForm";
	}

	@RequestMapping("/adminnoticeInsert.do")
	public String adminnoticeInsert(NoticeVO notice, Model model) {
		
		int n= noticeDao.noticeInsert(notice);
		if(n != 0 ) {
			 model.addAttribute("message","성공인가");
		 } else {
			 model.addAttribute("message","실패인가");
		 
		 }
		
		model.addAttribute("notices", noticeDao.noticeSelectList());
		return "admin/notice/noticeSelectList";
	}
	
	@RequestMapping("/noticeDelete1.do")
	public String noticeDelete1(@Param("notice_num") int notice_num, Model model) {
		model.addAttribute("notice", noticeDao.noticeDelete1(notice_num));
		
		model.addAttribute("notices", noticeDao.noticeSelectList());
		
		return "admin/notice/noticeSelectList";
	}
	
	@RequestMapping("/noticeUpdate1.do")
	public String noticeUpdate1(@Param("notice_num") int notice_num, Model model, NoticeVO notice) {
		
		model.addAttribute(noticeDao.noticeUpdate(notice));
		
		model.addAttribute("notice",noticeDao.noticeSearch(notice_num));
		
		System.out.println(notice_num);
		return "admin/notice/noticeSearch";
	}
	
}

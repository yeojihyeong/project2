package co.micol.prj.notice.web;

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
}

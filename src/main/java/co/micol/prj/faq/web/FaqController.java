package co.micol.prj.faq.web;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.faq.service.FaqService;
import co.micol.prj.faq.service.FaqVO;

@Controller
public class FaqController {
	@Autowired
	private FaqService faqDao;
	
	@RequestMapping("faqList.do")
	public String faqSelect(Model model) {
		model.addAttribute("faqs", faqDao.faqSelectList());
		return "ogani/faq/faqList";
	}
	
	@RequestMapping("faqInsertPage.do")
	public String faqInsertPage() {
		return "ogani/faq/faqInsert";
	}
	
	@RequestMapping("faqInsert.do")
	public String faqInsert(Model model, FaqVO faq) {
		model.addAttribute("faqInsert", faqDao.faqInsert(faq));
		return "ogani/faq/faqInsert";
	}
	
	@RequestMapping("faqDelete.do")
	public String faqDelete(Model model, FaqVO faq) {
		model.addAttribute(faqDao.faqDelete(faq));
		return "ogani/faq/faqDelete";
	}
}

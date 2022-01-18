package co.micol.prj.faq.service;

import java.util.List;

public interface FaqMapper {
	List<FaqVO> faqSelectList();
	FaqVO faqSelect(FaqVO faq);
	int faqInsert(FaqVO faq);
	int faqUpdate(FaqVO faq);
	int faqDelete(FaqVO faq);
}

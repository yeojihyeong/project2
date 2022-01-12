package co.micol.prj.faq.serviceImpl;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Repository;

import co.micol.prj.faq.service.FaqMapper;
import co.micol.prj.faq.service.FaqService;
import co.micol.prj.faq.service.FaqVO;

@Repository("faqDao")
public class FaqServiceImpl implements FaqService {
	
	@Autowired
	private FaqMapper map;

	@Override
	public List<FaqVO> faqSelectList() {
		return map.faqSelectList();
	}

	@Override
	public FaqVO faqSelect(FaqVO faq) {
		return map.faqSelect(faq);
	}

	@Override
	public int faqInsert(FaqVO faq) {
		return map.faqInsert(faq);
	}

	@Override
	public int faqUpdate(FaqVO faq) {
		return map.faqUpdate(faq);
	}

	@Override
	public int faqDelete(FaqVO faq) {
		return map.faqDelete(faq);
	}
	
	
	
}

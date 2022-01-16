package co.micol.prj.admin.web;


import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import co.micol.prj.main.service.MainService;

@Controller
public class AdminController {

	
	  @Autowired private MainService mainDao;
	 
	
	@RequestMapping("/main.do")
	public String main(Model model) {
		
		 model.addAttribute("main", mainDao.selectList());
			
		 
		return "admin/main/main";
	}
}

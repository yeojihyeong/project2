package co.micol.prj;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
public class HomeController {
	
	@RequestMapping("/home.do")
	public String home() {
		return "ogani/home/home";
	}
	
}

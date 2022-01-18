package co.micol.prj.onread.web;

import org.springframework.beans.factory.annotation.Autowired;

import co.micol.prj.onread.service.OnreadService;
import co.micol.prj.wish.service.WishService;

public class OnreadController {
	@Autowired
	private OnreadService onreadDAO;
}

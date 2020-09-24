package pack.controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import pack.model.SangpumImpl;
import pack.model.SangpumInter;

@Controller
public class ListController {
	@Autowired
	@Qualifier("sangpumImpl")
	private SangpumInter sangpumInter;
	
	@RequestMapping("list")
	public Model abc(Model model) {
		model.addAttribute("datas", sangpumInter.list());
		return model;
	}
}

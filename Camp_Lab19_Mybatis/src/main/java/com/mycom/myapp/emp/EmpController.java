package com.mycom.myapp.emp;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
@RequestMapping(value="/emp")
public class EmpController {
	@Autowired
	EmpService service;

	@RequestMapping(value = "/", method = RequestMethod.GET)
	public String home(Model model) {
		return "home";
	}
	
	@RequestMapping( value = "/list", method = RequestMethod.GET)
	public String list(Model m) {
		m.addAttribute("list", service.getEmpList());
		return "list";
	}

	@RequestMapping(value = "/add", method = RequestMethod.GET)
	public String addPost(Model m) {
		EmpVO vo = new EmpVO();
		m.addAttribute("command",vo);
		return "empform";
	}
	
	@RequestMapping(value = "/save", method = RequestMethod.POST)
	public String addPostOk(EmpVO vo) {
		if(service.insertEmp(vo) == 0)
			System.out.println("데이터 추가 실패!");
		else 
			System.out.println("데이터 추가 성공!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "/editEmp/{id}", method = RequestMethod.GET)
	public String editPost(@PathVariable("id") int id, Model m) {
		EmpVO vo = service.getEmp(id);
		m.addAttribute("command", vo);
		return "empeditform";
	}
	
	@RequestMapping(value = "/editsave", method = RequestMethod.POST)
	public String editPostOK(EmpVO vo) {
		if(service.updateEmp(vo) == 0)
			System.out.println("데이터 수정 실패!");
		else 
			System.out.println("데이터 수정 성공!");
		return "redirect:list";
	}
	
	@RequestMapping(value = "deleteEmp/{id}", method = RequestMethod.GET)
	public String deletePostOK(@PathVariable("id") int id) {
		if(service.deleteEmp(id) == 0) 
			System.out.println("데이터 삭제 실패!");
		else 
			System.out.println("데이터 삭제 성공!");
		
		return "redirect:../list";

	}
}
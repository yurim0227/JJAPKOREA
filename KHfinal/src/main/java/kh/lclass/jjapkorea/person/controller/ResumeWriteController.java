package kh.lclass.jjapkorea.person.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;

@Controller
public class ResumeWriteController {

	@GetMapping("/person/resume/write")
	public String resumeMgr() {

		return "/resume/resumeWrite";

	}
}
package poly.controller;

import javax.servlet.http.HttpSession;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("site/")
public class HomeController {
     @RequestMapping("index")
     public String index() {
    	 return "site/index";
     }
     @RequestMapping("redirect")
 	public String logout(HttpSession ss) {
 		System.out.println("logout");
 		ss.removeAttribute("tk_nv");
 		ss.removeAttribute("tk_kh");
 		ss.removeAttribute("tai_khoans");
 		return "redirect:index.htm";
 	}
     
}

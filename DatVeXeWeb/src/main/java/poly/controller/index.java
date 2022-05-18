package poly.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("")
public class index {
	@RequestMapping("index")
    public String index() {
    	return "index";
    }
}

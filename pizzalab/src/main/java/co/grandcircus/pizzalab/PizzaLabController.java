package co.grandcircus.pizzalab;

import javax.validation.Valid;

import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.validation.annotation.Validated;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PizzaLabController {
	
	@RequestMapping("/")
	public String homePage() {
		return "homepage";
	}
	
	@RequestMapping("/custompizza")
	public String customPizza() {
		return "custompizza";
	}

	
	@PostMapping("/custompizzaconfirmation")
	public ModelAndView customPizzaConfirmation(@Valid OrderDetails details, BindingResult bindingResult) {
		
		ModelAndView modelAndView; //= new ModelAndView("reviewconfirmation");
			
		if (bindingResult.hasErrors()) {
			modelAndView = new ModelAndView("custompizza");
			modelAndView.addObject("errors", bindingResult.getAllErrors());
		} else {
			modelAndView = new ModelAndView("custompizzaconfirmation");
		}
		modelAndView.addObject("orderDetails", details);
		return modelAndView;	
	}

	
	@RequestMapping("/review")
	public String review() {
		return "review";
	}
	
	@PostMapping("/reviewconfirmation")
	public ModelAndView reviewConfirmation(@Valid Review review, BindingResult bindingResult) {
		
		ModelAndView modelAndView; //= new ModelAndView("reviewconfirmation");
		
		if (bindingResult.hasErrors()) {
			modelAndView = new ModelAndView("review");
			modelAndView.addObject("errors", bindingResult.getAllErrors());
		} else {
			modelAndView = new ModelAndView("reviewconfirmation");
			System.out.println(review);
		}
		System.out.println(bindingResult);
		modelAndView.addObject("reviewDetails", review);
		return modelAndView;	
	}
	
	
	@GetMapping("/specialtypizza")
	public ModelAndView specialtyPizza(@RequestParam String name, @RequestParam String price) {
		ModelAndView modelAndView = new ModelAndView("specialtypizza");
		modelAndView.addObject("name", name);
		modelAndView.addObject("price", price);
		return modelAndView;
	}
}

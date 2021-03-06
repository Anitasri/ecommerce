package controller;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

import model.dao.CategoryDAO;
import model.dto.Category;


@Controller
public class PageController
{
	
	@Autowired
	private CategoryDAO categoryDAO;
	
	
	
	@RequestMapping(value = {"/", "/home", "/index"})
	public ModelAndView index() 
	{		
		ModelAndView mv = new ModelAndView("page");		
		mv.addObject("title","Home");
		
		//passing the list of categories
		mv.addObject("categories",categoryDAO.list());
		
		
		mv.addObject("userClickHome",true);
		return mv;
	}
	
	@RequestMapping(value = {"/about"})
	public ModelAndView about() 
	{		
		ModelAndView mv = new ModelAndView("page");		
		mv.addObject("title","About Us");
		mv.addObject("userClickAbout",true);
		return mv;
	}
	
	@RequestMapping(value = {"/contact"})
	public ModelAndView contact() 
	{		
		ModelAndView mv = new ModelAndView("page");		
		mv.addObject("title","Contact Us");
		mv.addObject("userClickContact",true);
		return mv;
	}
	
	// Method to load all items
	
	@RequestMapping(value = "/show/all/items")
	public ModelAndView showAllItems() 
	{		
		ModelAndView mv = new ModelAndView("page");		
		mv.addObject("title","All Items");
		
		//passing the list of categories
		mv.addObject("categories",categoryDAO.list());
		
		
		mv.addObject("userClickAllItems",true);
		return mv;
	}

	@RequestMapping(value = "/show/category/{id}/items")
	public ModelAndView showCategoryItems(@PathVariable("id") int id) 
	{		
		ModelAndView mv = new ModelAndView("page");		
        
		//categoryDAO to fetch a category
		
		Category category=null;
		
		category= categoryDAO.get(id);
		
		mv.addObject("title",category.getName());
		
		//passing the list of categories
		mv.addObject("categories",categoryDAO.list());
		
		//passing single category object
		
		mv.addObject("category",category);
		
		mv.addObject("userClickCategoryItems",true);
		
		return mv;
	}

	
}	

package com.yuzu4.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.servlet.ModelAndView;

import com.yuzu.dao.CategoryDAO;
import com.yuzu.domain.Category;

@Controller
public class CategoryController {
	@Autowired
	private CategoryDAO categoryDAO;
	@Autowired
	private Category category;

	public ModelAndView getAllCategories() 
	{
		ModelAndView mv = new ModelAndView("/AdminHome");
		List<Category> categoryList = categoryDAO.list();
		mv.addObject("categoryList", categoryList);
		
		return mv;
	}
}

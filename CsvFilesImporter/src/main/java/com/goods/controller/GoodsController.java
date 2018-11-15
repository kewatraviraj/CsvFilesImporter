/**
 * 
 */
package com.goods.controller;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

import com.goods.model.Goods;
import com.goods.service.GoodsService;

/**
 * @author Dell
 *
 */
@Controller
@RequestMapping("/")
public class GoodsController {
	
	static Logger log = Logger.getLogger(GoodsController.class.getName());
	
	@Autowired
	Goods goodsdata;
	
	@Autowired
	GoodsService goodsdataservice;
	
	@RequestMapping("/display")
	public String getData(@ModelAttribute Goods goodsdata,ModelMap model) {
		model.addAttribute("listData", goodsdataservice.listData());
		return "display";
	}
	 
}

package com.zzyy.web.controller;

import java.util.List;
import java.util.Set;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;

import com.zzyy.data.domain.Category;
import com.zzyy.data.domain.Item;
import com.zzyy.data.domain.User;
import com.zzyy.service.ProductService;
import com.zzyy.service.UserService;

@Controller
public class MainController {
    
    @Autowired
    private UserService userService;
    
    @Autowired
    private ProductService productService;

    @RequestMapping(value = "/rest/categoryItems/{catId}", method = RequestMethod.GET)
    public @ResponseBody Set<Item> getItemsByCategory(@PathVariable("catId") int catId) {
        return productService.listItemsByCategory(catId);
    }
    
    @RequestMapping(value = "/rest/allTopCategory", method = RequestMethod.GET)
    public @ResponseBody List<Category> getAllTopLevelCategories() {
        return productService.listAllTopCategory();
    }
    
    @RequestMapping(value = "/rest/user/{username}", method = RequestMethod.GET)
    public @ResponseBody User getUser(@PathVariable("username") String username) {
        return userService.getUser(username);
    }
    
    @RequestMapping(value = "/rest/item/{id}", method = RequestMethod.GET)
    public @ResponseBody Item getItemById(@PathVariable("id") int id) {
        return productService.getItemById(id);
    }
}

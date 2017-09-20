package com.autodesk.coding.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestBody;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RestController;
import org.springframework.web.servlet.ModelAndView;

import com.autodesk.coding.model.User;
import com.autodesk.coding.service.UserServiceDAO;

@RestController
public class UserController {
    @Autowired
    UserServiceDAO userServiceDAO;

    @RequestMapping(value = "/user", method = RequestMethod.POST)
    public User addOrUpdateUser(@RequestBody User user) {
	User user1 = this.userServiceDAO.addOrUpdateUser(user);
	return (user1);
    }

    @RequestMapping(value = "/user/{id}", method = RequestMethod.DELETE)
    public User deleteUser(@PathVariable("id") int uid) {
	List<User> user = this.userServiceDAO.getUserById(uid);
	// only record returned with ById function
	if (user.size() > 0) {
	    this.userServiceDAO.deleteUser(user.get(0));
	    return (user.get(0));
	}
	return null;
    }

    @RequestMapping(value = "/users", method = RequestMethod.GET)
    public List<User> getAllUsers() {
	List<User> users = this.userServiceDAO.getAllUsers();
	return (users);
    }

    @RequestMapping(value = "/", method = RequestMethod.GET)
    public ModelAndView getIndexPage() {
	ModelAndView mv = new ModelAndView("index");
	return mv;
    }
}

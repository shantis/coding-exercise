package com.autodesk.coding.service;

import java.util.List;

import com.autodesk.coding.model.User;

public interface UserServiceDAO {

    public User addOrUpdateUser(User user);

    public void deleteUser(User user);

    public List<User> getAllUsers();

    public List<User> getUserById(int id);

}
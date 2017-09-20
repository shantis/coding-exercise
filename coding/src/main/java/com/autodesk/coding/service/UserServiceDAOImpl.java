package com.autodesk.coding.service;

import java.util.List;

import javax.transaction.Transactional;

import org.hibernate.Criteria;
import org.hibernate.Session;
import org.hibernate.SessionFactory;
import org.hibernate.criterion.Restrictions;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.dao.DataAccessException;
import org.springframework.stereotype.Repository;

import com.autodesk.coding.model.User;

@Repository
@Transactional
public class UserServiceDAOImpl implements UserServiceDAO {
    // private static List<User> users = new ArrayList<User>();

    private SessionFactory sessionFactory;

    @Autowired
    public UserServiceDAOImpl(SessionFactory sessionFactory) {
	this.sessionFactory = sessionFactory;
    }

    public User addOrUpdateUser(User user) {
	try {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.saveOrUpdate(user);
	} catch (DataAccessException e) {
	    System.out.println("Exception occurred while adding the User {}" + e);
	    throw e;
	}
	return user;
    }

    public void deleteUser(User user) {
	try {
	    Session session = this.sessionFactory.getCurrentSession();
	    session.delete(user);
	} catch (DataAccessException e) {
	    System.out.println("Exception occurred while deleting the User {}" + e);
	    throw e;
	}
    }

    @SuppressWarnings("unchecked")
    public List<User> getAllUsers() {
	List<User> users = null;
	try {
	    Session session = this.sessionFactory.getCurrentSession();
	    users = session.createQuery("from User").list();
	} catch (DataAccessException e) {
	    System.out.println("Exception occurred while fetching the User {}" + e);
	    throw e;
	}
	return users;
    }

    @SuppressWarnings("unchecked")
    public List<User> getUserById(int id) {
	List<User> users = null;
	try {
	    Session session = this.sessionFactory.getCurrentSession();
	    Criteria cr = session.createCriteria(User.class);
	    cr.add(Restrictions.eq("id", id));
	    users = cr.list();
	} catch (DataAccessException e) {
	    System.out.println("Exception occurred while fetching the User {} by Id: " + id + ";" + e);
	    throw e;
	}
	return users;
    }
}

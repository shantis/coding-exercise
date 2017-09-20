package com.autodesk.coding.model;

import java.io.Serializable;

import javax.persistence.Column;
import javax.persistence.Entity;
import javax.persistence.GeneratedValue;
import javax.persistence.GenerationType;
import javax.persistence.Id;
import javax.persistence.Table;

@Entity
@Table(name = "userinfo")
public class User implements Serializable {

    private static final long serialVersionUID = -3465813074586302847L;

    @Id
    @GeneratedValue(strategy = GenerationType.AUTO)
    private int id;

    @Column
    private String username;
    @Column
    private String address;

    public User() {

    }

    public User(int id, String username, String address) {
	this.id = id;
	this.username = username;
	this.address = address;
    }

    public String getAddress() {
	return this.address;
    }

    public int getId() {
	return this.id;
    }

    public String getUsername() {
	return this.username;
    }

    public void setAddress(String address) {
	this.address = address;
    }

    public void setId(int id) {
	this.id = id;
    }

    public void setUsername(String username) {
	this.username = username;
    }

    @Override
    public String toString() {
	return "User [username=" + this.username + ", address=" + this.address + "]";
    }

}
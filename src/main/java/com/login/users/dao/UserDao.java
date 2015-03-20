package com.login.users.dao;

import com.login.users.model.User;

public interface UserDao {

	User findByUserName(String username);

}
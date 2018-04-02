package com.aran.dao;

import com.aran.model.User;

public interface UserDao {
    User selectUser(long id);
}

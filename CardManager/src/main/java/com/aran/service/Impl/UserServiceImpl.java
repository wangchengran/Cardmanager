package com.aran.service.Impl;

import com.aran.dao.UserDao;
import com.aran.model.User;
import com.aran.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class UserServiceImpl implements UserService {

    @Autowired
    private UserDao userDao;
    @Override
    public User selectUser(long userId) {
        return userDao.selectUser(userId);
    }
}

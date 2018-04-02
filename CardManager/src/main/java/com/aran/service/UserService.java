package com.aran.service;

import com.aran.model.User;
import org.springframework.stereotype.Service;

@Service("userService")
public interface UserService {

    public User selectUser(long userId);

}

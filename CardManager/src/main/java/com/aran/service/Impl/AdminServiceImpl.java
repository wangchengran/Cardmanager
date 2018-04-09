package com.aran.service.Impl;

import com.aran.dao.AdminMapper;
import com.aran.model.Admin;
import com.aran.service.AdminService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

@Service
public class AdminServiceImpl implements AdminService{

    @Autowired
    private AdminMapper adminMapper;

    @Override
    public Admin selectUserByName(String username) {
        return adminMapper.selectUserByName(username);
    }
}

package com.aran.service;

import com.aran.model.Admin;
import org.springframework.stereotype.Service;

@Service("adminService")
public interface AdminService {

    public Admin selectUserByName(String username);
}

package com.aran.service.Impl;

import com.aran.dao.UserInformationMapper;
import com.aran.model.UserInformation;
import com.aran.service.UserInformationService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

@Service
public class UserInformationServiceImpl implements UserInformationService{

    @Autowired
    private UserInformationMapper userInformationMapper;

    @Override
    public int addInformation(UserInformation userInformation) {
        return userInformationMapper.insertSelective(userInformation);
    }

    @Override
    public List<UserInformation> getAllForms() {
        return userInformationMapper.selectAllForms();
    }
}

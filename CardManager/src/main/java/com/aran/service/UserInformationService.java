package com.aran.service;

import com.aran.model.UserInformation;
import org.springframework.stereotype.Service;

import java.util.List;

@Service("userInformationService")
public interface UserInformationService {


    int addInformation(UserInformation userInformation);

    List<UserInformation> getAllForms();
}

package com.aran.service;

import com.aran.model.UserInformation;
import org.springframework.stereotype.Service;

@Service("userInformationService")
public interface UserInformationService {


    int addInformation(UserInformation userInformation);
}

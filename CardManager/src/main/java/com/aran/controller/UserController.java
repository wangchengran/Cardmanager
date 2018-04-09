package com.aran.controller;

import com.aran.model.UserInformation;
import com.aran.service.UserInformationService;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;

@Controller
@RequestMapping("/user")
public class UserController {

    private final static Logger logger = LoggerFactory.getLogger(UserController.class);

    @Autowired
    private UserInformationService userInformationService;

    @RequestMapping("/index")
    public String toIndex(Model model) {
//        logger.info("abcsdkbefb,{}","6666");
        return "index";
    }

    @RequestMapping("/applyCard")
    public String toApplyCard() {
//        logger.info("访问填写详细信息页面");
        return "applyCard";
    }

    @RequestMapping("/addInformation")
    public String addInformation(@ModelAttribute UserInformation userInformation){
        logger.info("userInformation,{}",userInformation);
        userInformationService.addInformation(userInformation);
//        logger.info("保存用户申请信息");
        return "success";
    }








//    @RequestMapping("/showUser.do")
//    public void selectUser(HttpServletRequest request, HttpServletResponse response) throws IOException {
//        logger.info("hello it`s me");
//        request.setCharacterEncoding("UTF-8");
//        response.setCharacterEncoding("UTF-8");
//        long userId = Long.parseLong(request.getParameter("id"));
//        User user = userService.selectUser(userId);
//        ObjectMapper mapper = new ObjectMapper();
//        response.getWriter().write(mapper.writeValueAsString(user));
//        response.getWriter().close();
//    }
}

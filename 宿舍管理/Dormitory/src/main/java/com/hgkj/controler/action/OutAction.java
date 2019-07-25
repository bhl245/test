package com.hgkj.controler.action;

import com.hgkj.model.entity.Out1;
import com.hgkj.model.service.OutService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * @Author: 卞虹霖
 * @Date: 2019/7/23 9:18
 * @Version 1.8
 */
@Controller
@RequestMapping("/")
public class OutAction {
    @Autowired
    private OutService outService;

    @RequestMapping("allOut")
    public String allOut(HttpSession session) {
        List<Out1> out1List = outService.allOutService();
        session.setAttribute("out1List", out1List);
        return "redirect:OutList.jsp";
    }
}

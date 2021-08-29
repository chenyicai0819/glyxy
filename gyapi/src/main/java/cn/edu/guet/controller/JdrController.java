package cn.edu.guet.controller;

import cn.edu.guet.entity.Jdr;
import cn.edu.guet.service.JdrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.controller
 * @date 2021/8/28 20:31
 * @since 1.0
 */
@RestController
public class JdrController {
    @Autowired
    private JdrService jdrService;

    @RequestMapping("/getJdr")
    public Jdr getJdr(String userId){
        return jdrService.getJdr(userId);
    }
}

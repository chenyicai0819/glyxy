package cn.edu.guet.controller;

import cn.edu.guet.entity.Qdb;
import cn.edu.guet.service.QdbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.controller
 * @date 2021/8/28 20:51
 * @since 1.0
 */
@RestController
public class QdbController {

    @Autowired
    private QdbService qdbService;

    @RequestMapping("/getqdbList")
    public List<Qdb> getqdbList(String workId){
        return qdbService.getqdbList(workId);
    }
}

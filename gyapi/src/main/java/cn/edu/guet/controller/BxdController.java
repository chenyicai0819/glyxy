package cn.edu.guet.controller;


import cn.edu.guet.entity.Bxd;
import cn.edu.guet.service.BxdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.bind.annotation.RestController;

import java.util.List;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet
 * @date 2021/8/27 10:55
 * @since 1.0
 */

@RestController
public class BxdController {

    @Autowired
    BxdService bxdService;

    @GetMapping(value = "getBxdNum")
    public int getBxdNum(){
        int bxdNum=bxdService.getBxdNum();
        System.out.println(bxdNum);
        return bxdNum;
    }
    @GetMapping(value = "getBxdList")
    public List<Bxd> getBxdList(String worlId){
        List<Bxd> bxdList=bxdService.getBxdList(worlId);
        for (int i=0;i<bxdList.size();i++){
            System.out.println(bxdList.get(i).getDict_description());
        }
        return bxdList;
    }
}

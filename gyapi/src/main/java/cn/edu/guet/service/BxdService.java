package cn.edu.guet.service;

import cn.edu.guet.entity.Bxd;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.gyapi.service
 * @date 2021/8/27 11:30
 * @since 1.0
 */
@Service
public interface BxdService {
    int getBxdNum();
    List<Bxd> getBxdList(String workId);
    String getBxdType(int dict_id,int dictitem_id);
}

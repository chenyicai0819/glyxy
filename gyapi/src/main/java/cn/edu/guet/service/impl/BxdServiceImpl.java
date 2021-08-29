package cn.edu.guet.service.impl;

import cn.edu.guet.entity.Bxd;
import cn.edu.guet.mapper.BxdMapper;
import cn.edu.guet.service.BxdService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.gyapi.service.impl
 * @date 2021/8/27 11:31
 * @since 1.0
 */
@Service
public class BxdServiceImpl implements BxdService {

    @Autowired
    private BxdMapper bxdMapper;
    @Override
    public int getBxdNum() {
        return bxdMapper.getBxdNum();
    }

    @Override
    public List<Bxd> getBxdList(String workId) {
        Map<Object,Object> map=new HashMap<>();
        map.put("workId",workId);
        return bxdMapper.getBxdList(map);
    }

    @Override
    public String getBxdType(int dict_id, int dictitem_id) {
        return bxdMapper.getBxdType(dict_id,dictitem_id);
    }
}

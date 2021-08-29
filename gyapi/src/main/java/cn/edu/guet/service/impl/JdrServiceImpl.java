package cn.edu.guet.service.impl;

import cn.edu.guet.entity.Jdr;
import cn.edu.guet.mapper.JdrMapper;
import cn.edu.guet.service.JdrService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.service.impl
 * @date 2021/8/28 20:33
 * @since 1.0
 */
@Service
public class JdrServiceImpl implements JdrService {

    @Autowired
    private JdrMapper jdrMapper;
    @Override
    public Jdr getJdr(String userId) {
        return jdrMapper.getJdr(userId);
    }
}

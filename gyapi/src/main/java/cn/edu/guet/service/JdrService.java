package cn.edu.guet.service;

import cn.edu.guet.entity.Jdr;
import org.springframework.stereotype.Service;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.service
 * @date 2021/8/28 20:33
 * @since 1.0
 */
@Service
public interface JdrService {

    public Jdr getJdr(String userId);
}

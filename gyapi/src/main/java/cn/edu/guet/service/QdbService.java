package cn.edu.guet.service;

import cn.edu.guet.entity.Qdb;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.service
 * @date 2021/8/28 20:50
 * @since 1.0
 */
@Service
public interface QdbService {
    public List<Qdb> getqdbList(String workId);
}

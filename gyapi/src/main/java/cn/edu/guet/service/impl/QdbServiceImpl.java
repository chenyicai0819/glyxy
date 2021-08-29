package cn.edu.guet.service.impl;

import cn.edu.guet.entity.Qdb;
import cn.edu.guet.mapper.QdbMapper;
import cn.edu.guet.service.QdbService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import java.util.List;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.service.impl
 * @date 2021/8/28 20:51
 * @since 1.0
 */

@Service
public class QdbServiceImpl implements QdbService {

    @Autowired
    private QdbMapper qdbMapper;
    @Override
    public List<Qdb> getqdbList(String workId) {
        return qdbMapper.getqdbList(workId);
    }
}

package cn.edu.guet.mapper;

import cn.edu.guet.entity.Qdb;
import org.apache.ibatis.annotations.Mapper;

import java.util.List;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.mapper
 * @date 2021/8/28 20:48
 * @since 1.0
 */
@Mapper
public interface QdbMapper {
    public List<Qdb> getqdbList(String workId);
}

package cn.edu.guet.mapper;

import cn.edu.guet.entity.Jdr;
import org.apache.ibatis.annotations.Mapper;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.mapper
 * @date 2021/8/28 20:35
 * @since 1.0
 */
@Mapper
public interface JdrMapper {
    public Jdr getJdr(String userId);
}

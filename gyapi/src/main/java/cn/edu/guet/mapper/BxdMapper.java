package cn.edu.guet.mapper;

import cn.edu.guet.entity.Bxd;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * @author George
 * @project glyxy
 * @package cn.edu.guet.gyapi.mapper
 * @date 2021/8/27 11:33
 * @since 1.0
 */
@Mapper
public interface BxdMapper {
    int getBxdNum();
    List<Bxd> getBxdList(Map<Object,Object> map);
    String getBxdType(int dict_id,int dictitem_id);
}

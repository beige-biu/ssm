package com.wenyu.ssm.mapper;

import com.wenyu.ssm.bean.Goods;
import org.apache.ibatis.annotations.Mapper;
import org.apache.ibatis.annotations.Param;

import java.util.List;
import java.util.Map;

/**
 * Author:wenyu
 * 2021/4/14
 */
@Mapper
public interface GoodMapper {
    //List<Map<String, Goods>> list();
    List<Map<String, Goods>> list(@Param("gname") String gname);

    void add(Goods goods);
}

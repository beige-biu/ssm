package com.wenyu.ssm.service;

import com.wenyu.ssm.bean.Goods;
import org.apache.ibatis.annotations.Param;
import org.springframework.stereotype.Service;

import java.util.List;
import java.util.Map;

/**
 * Author:wenyu
 * 2021/4/14
 */

public interface GoodService {

    List<Map<String, Goods>> list( String gname);

    void add(Goods goods);
}

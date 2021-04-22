package com.wenyu.ssm.service.impl;

import com.wenyu.ssm.bean.Goods;
import com.wenyu.ssm.mapper.GoodMapper;
import com.wenyu.ssm.service.GoodService;
import org.springframework.stereotype.Service;

import javax.annotation.Resource;
import java.util.List;
import java.util.Map;

/**
 * Author:wenyu
 * 2021/4/14
 */
@Service("goodService")
public class GoodServiceImpl implements GoodService {

    @Resource
    private GoodMapper goodMapper;
    @Override
    public List<Map<String, Goods>> list(String gname) {
        return  goodMapper.list(gname);

    }

    @Override
    public void add(Goods goods) {
        goodMapper.add(goods);
    }

    @Override
    public int update(Goods goods) {
        int i = goodMapper.update(goods);
        return i;
    }


}

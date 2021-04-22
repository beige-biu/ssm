package com.wenyu.ssm.controller;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.wenyu.ssm.bean.Goods;
import com.wenyu.ssm.service.GoodService;
import com.wenyu.ssm.util.PageHelpUtil;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import javax.annotation.Resource;
import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * Author:wenyu
 * 2021/4/14
 */
@Controller

public class GoodController {

    @Resource
    private GoodService goodService;
    //定义每页显示多少行
    private int pageSize = 3;
    @RequestMapping("list")
    public String index(Model model,@RequestParam(defaultValue = "1",name="page") int pageNum
            ,String gname){
        //相当于limit中的a,b limit a.b
        PageHelper.startPage(pageNum,pageSize);
        List<Map<String, Goods>> goods = goodService.list(gname);
        PageInfo<Map<String,Goods>> pageInfo = new PageInfo<>(goods);
        model.addAttribute("goods", pageInfo.getList());
        //url:每次点击页面的地址 pageInfo：pageInfo
        //paramMap:是带条件的查询分页
        String  pagenation= "";
        Map<String,Object> params = new HashMap<>();
        if(gname != null){
            params.put("gname",gname);
            pagenation = PageHelpUtil.page("list", pageInfo, params);
        }else{
            pagenation = PageHelpUtil.page("list", pageInfo, null);
        }
        model.addAttribute("pagenation",pagenation);
        return "index";
    }


    @RequestMapping("toadd")
    public String toadd(){

        return "add";
    }

    @RequestMapping("/add")
    public String add(Goods goods, MultipartFile photo){
        goodService.add(goods);

        return "redirect:list";
    }

    @RequestMapping("update")
    public String update(Goods goods){
        goodService.update(goods);
        return "redirect:list";
    }

}

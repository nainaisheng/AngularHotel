package com.nona.hotel.angularhotel.controller;

import com.nona.hotel.angularhotel.pojo.AreaArticle;
import com.nona.hotel.angularhotel.pojo.Result;
import com.nona.hotel.angularhotel.pojo.User;
import com.nona.hotel.angularhotel.service.AreaService;
import com.nona.hotel.angularhotel.service.ArticleService;
import com.nona.hotel.angularhotel.util.*;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.*;

import javax.servlet.http.HttpSession;
import java.util.HashMap;
import java.util.List;

/**
 * com.nona.hotel.angularhotel.controller
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 24
 * @time: 2016/10/24
 */
@Controller
public class ArticleContoller {
    @Autowired
    private ArticleService articleService;
    @Autowired
    private AreaService areaService;

    /**
     * 上传文章
     * @param article
     * @param session
     * @return
     */
    @RequestMapping(value = "/area/uploadArticles",method = RequestMethod.POST)
    @ResponseBody
    public Result uploadArticle(@RequestBody AreaArticle article, HttpSession session){
        User user = (User) session.getAttribute(Constant.USERINFO);
        article.setCreator(user.getRealName());
        article.setOperateDate(TimeFormatUtil.formatTime());
        article.setCreateDate(article.getOperateDate());
        article.setId(UUIDUtil.getUUID());
        int result = articleService.insertArticle(article);
        if (result>0){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 获取文章列表
     * @param pager
     * @param session
     * @return
     */
    @RequestMapping(value = "/articles",method = RequestMethod.POST)
    @ResponseBody
    public DataTableResult<AreaArticle> getArticleList(@RequestBody Pager<AreaArticle> pager, HttpSession session){
        DataTableResult<AreaArticle> result = new DataTableResult<AreaArticle>();
        List<AreaArticle> articleList  = null;
        User user = (User) session.getAttribute(Constant.USERINFO);
        int userRoleTypeId = user.getUserRoleTypeId();
        HashMap<String, Object> paramMap = new HashMap<String, Object>();
        if (userRoleTypeId==3){
            articleList = articleService.getAllAreaArticleList(pager, paramMap);
        }
        if (userRoleTypeId==4){
            paramMap.put("userId",user.getId());
            articleList = articleService.getPartAreaArticleList(pager,paramMap);
        }
        if (articleList!=null&&articleList.size()>0){
            for (AreaArticle article : articleList) {
                article.setCreateDate(TimeFormatUtil.timeFormat(article.getCreateDate()));
            }
            result.setDraw(pager.getDraw());
            result.setData(articleList);
            result.setRecordsTotal(pager.getTotalCount());
            result.setRecordsFiltered(articleList.size());
            return result;
        }
        return result;

    }

    /**
     * 根据id查找文章
     * @param id 文章id
     * @param session
     * @return
     */
    @RequestMapping(value = "/articles/{id}")
    @ResponseBody
    public Result getArticle(@PathVariable String id, HttpSession session){
        AreaArticle article = articleService.getArticleById(id);
        if (article!=null){
            article.setCreateDate(TimeFormatUtil.timeFormat(article.getCreateDate()));
            return new Result("success", Constant.DEAL_SUCCESS,article);

        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 编辑文章
     * 单个编辑
     * @param article 文章对象
     * @param session
     * @return
     */
    @RequestMapping(value = "/article/edit")
    @ResponseBody
    public Result editArticle(@RequestBody AreaArticle article,HttpSession session){
        User user= (User) session.getAttribute(Constant.USERINFO);
        article.setEditor(user.getUserName());
        article.setEditDate(TimeFormatUtil.formatTime());
        article.setOperateDate(article.getEditDate());
        int result = articleService.editArticle(article);
        if (result>0){
           return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }

    /**
     * 删除文章
     * 数组形式
     * @param articles 文章id数组
     * @param session
     * @return
     */
    @RequestMapping(value = "/articles/delete")
    @ResponseBody
    public Result deleteArticle(@RequestBody String[] articles,HttpSession session){
        int result = articleService.deleteArticle(articles);
        if (result==articles.length){
            return new Result("success",Constant.DEAL_SUCCESS);
        }
        return new Result("fail",Constant.DEAL_FAIL);
    }


}

package com.nona.hotel.angularhotel.service.impl;


import com.nona.hotel.angularhotel.mapper.AreaMapper;
import com.nona.hotel.angularhotel.pojo.Area;
import com.nona.hotel.angularhotel.pojo.AreaArticle;
import com.nona.hotel.angularhotel.service.ArticleService;
import com.nona.hotel.angularhotel.mapper.ArticleMapper;
import com.nona.hotel.angularhotel.util.Pager;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;
import org.springframework.transaction.annotation.Transactional;

import java.util.HashMap;
import java.util.List;

/**
 * com.nona.hotel.angularhotel.service.impl
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 24
 * @time: 2016/10/24
 */
@Service
@Transactional(rollbackFor = Exception.class)
public class ArticleServiceImpl implements ArticleService {
    @Autowired
    private ArticleMapper articleMapper;
    @Autowired
    private AreaMapper areaMapper;

    @Override
    public int insertArticle(AreaArticle article) {
        int result = 0;
        result = articleMapper.insertArticle(article);

        return result;
    }

    @Override
    public List<AreaArticle> getAllAreaArticleList(Pager<AreaArticle> pager, HashMap<String, Object> paramMap) {
        List<AreaArticle> articleList = null;
        int result = articleMapper.getAllAreaArticleCount();
        pager.setTotalCount(result);
        if (result>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            articleList = articleMapper.getAllAreaArticleList(paramMap);

        }
        return articleList;
    }

    /**
     * 获取区域文章列表
     * 1.查询分区总文章数
     * 2.分页获取
     * @param pager 分页对象
     * @param paramMap 存放请求参数的map
     * @return
     */
    @Override
    public List<AreaArticle> getPartAreaArticleList(Pager<AreaArticle> pager, HashMap<String, Object> paramMap) {
        List<AreaArticle> articleList = null;
        int count = 0;
        String areaId = areaMapper.getAreaId((String) paramMap.get("userId"));
        paramMap.put("areaId",areaId);
        Area area = areaMapper.getAreaById(areaId);
        count = articleMapper.getPartArticleCount(paramMap);
        pager.setTotalCount(count);
        if (count>0){
            paramMap.put("start",pager.getStart());
            paramMap.put("limit",pager.getLength());
            articleList = articleMapper.getPartAreaArtilceList(paramMap);
        }

        return articleList;
    }

    /**
     * 通过文章id检索文章
     * @param articleId
     * @return
     */
    @Override
    public AreaArticle getArticleById(String articleId) {
        AreaArticle article = articleMapper.getArticleById(articleId);
        return article;
    }

    /**
     * 修改文章
     * 变动参数 editor editDate operateDate title content
     * @param article
     * @return
     */
    @Override
    public int editArticle(AreaArticle article) {
        int result = 0;
        try {
            result =articleMapper.editArticle(article);
        }catch (Exception e){
            e.printStackTrace();
            return 0;
        }
        return result;
    }

    @Override
    public int deleteArticle(String[] articles) {
        int result = 0 ;
        try {
            result = articleMapper.deleteArticle(articles);

        }catch (Exception e){
            e.printStackTrace();
            return result;
        }

        return result;
    }


}

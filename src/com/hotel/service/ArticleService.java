package com.hotel.service;

import com.hotel.pojo.AreaArticle;
import com.hotel.util.Pager;

import java.util.HashMap;
import java.util.List;

/**
 * com.hotel.service
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 24
 * @time: 2016/10/24
 */
public interface ArticleService {

    int insertArticle(AreaArticle article);

    List<AreaArticle> getAllAreaArticleList(Pager<AreaArticle> pager, HashMap<String, Object> paramMap);

    List<AreaArticle> getPartAreaArticleList(Pager<AreaArticle> pager, HashMap<String, Object> paramMap);

    AreaArticle getArticleById(String articleId);

    int editArticle(AreaArticle article);

    int deleteArticle(String[] articles);
}

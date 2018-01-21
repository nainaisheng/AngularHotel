package com.nona.hotel.angularhotel.service;

import com.nona.hotel.angularhotel.pojo.AreaArticle;
import com.nona.hotel.angularhotel.util.Pager;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

/**
 * com.nona.hotel.angularhotel.service
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

    List<AreaArticle> getAllAreaArticleList(Pager<AreaArticle> pager, Map<String, Object> paramMap);

    List<AreaArticle> getPartAreaArticleList(Pager<AreaArticle> pager, Map<String, Object> paramMap);

    AreaArticle getArticleById(String articleId);

    int editArticle(AreaArticle article);

    int deleteArticle(String[] articles);
}

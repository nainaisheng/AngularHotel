package com.hotel.mapper;

import com.hotel.pojo.AreaArticle;

import java.util.HashMap;
import java.util.List;

/**
 * com.jsu.mapper
 *
 * @desc
 * @author:EumJi
 * @year: 2016
 * @month: 10
 * @day: 24
 * @time: 2016/10/24
 */
public interface ArticleMapper {
    int insertArticle(AreaArticle article);

    int getAllAreaArticleCount();

    List<AreaArticle> getAllAreaArticleList(HashMap<String, Object> paramMap);

    List<AreaArticle> getPartAreaArtilceList(HashMap<String, Object> paramMap);

    int getPartArticleCount(HashMap<String, Object> paramMap);

    AreaArticle getArticleById(String articleId);

    int editArticle(AreaArticle article);

    int deleteArticle(String[] articles);
}

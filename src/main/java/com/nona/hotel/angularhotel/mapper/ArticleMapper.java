package com.nona.hotel.angularhotel.mapper;

import com.nona.hotel.angularhotel.pojo.AreaArticle;
import org.apache.ibatis.annotations.Mapper;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

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
@Mapper
public interface ArticleMapper {
    int insertArticle(AreaArticle article);

    int getAllAreaArticleCount();

    List<AreaArticle> getAllAreaArticleList(Map<String, Object> paramMap);

    List<AreaArticle> getPartAreaArtilceList(Map<String, Object> paramMap);

    int getPartArticleCount(Map<String, Object> paramMap);

    AreaArticle getArticleById(String articleId);

    int editArticle(AreaArticle article);

    int deleteArticle(String[] articles);
}

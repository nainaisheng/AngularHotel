package com.nona.hotel.angularhotel.interceptor;


import com.nona.hotel.angularhotel.util.Constant;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.util.StringUtils;
import org.springframework.web.servlet.HandlerInterceptor;
import org.springframework.web.servlet.ModelAndView;
import org.springframework.web.servlet.handler.HandlerInterceptorAdapter;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.util.List;

/**
 * Created by root on 2016/8/17/0017.
 */
public class SessionInterceptor implements HandlerInterceptor{
    private static final Logger logger = LoggerFactory.getLogger(SessionInterceptor.class);

    private List<String> excludeMappingUrl;

    public List<String> getExcludeMappingUrl() {
        return excludeMappingUrl;
    }

    public void setExcludeMappingUrl(List<String> excludeMappingUrl) {
        this.excludeMappingUrl = excludeMappingUrl;
    }

    private ThreadLocal<Long> dealTimeThreadLoacal = new ThreadLocal();


    public boolean isStaticFile(String url){
        if (!StringUtils.isEmpty(url)){
            int i = url.lastIndexOf(".");
            String postFix = null;
            if (i>-1){
                postFix = url.substring(i);
                //System.out.println("url: "+postFix);
            }
            if (!StringUtils.isEmpty(postFix)&&excludeMappingUrl.contains(postFix)){
                return true;
            }
        }
        return false;
    }
    @Override
    public boolean preHandle(HttpServletRequest request, HttpServletResponse response, Object handler) throws Exception {
        long startTime = System.currentTimeMillis();
        dealTimeThreadLoacal.set(startTime);

        String url = request.getRequestURI();
        //System.out.println("url: "+url);
        boolean result = isStaticFile(url);
        if (result) {
            return true;
        }else{

                if (!url.contains("/user/login")){
                    HttpSession session = request.getSession();
                    //System.out.println("验证session之前");
                    if (session.getAttribute(Constant.USERINFO)==null){
                        //System.out.println("验证session之后");
                        response.sendRedirect("/session/error");
                        return false;
                    }
                    return true;
                }
            }

        return true;
    }

    @Override
    public void postHandle(HttpServletRequest httpServletRequest, HttpServletResponse httpServletResponse, Object o, ModelAndView modelAndView) throws Exception {

    }

    @Override
    public void afterCompletion(HttpServletRequest request, HttpServletResponse response, Object handler, Exception ex) throws Exception {
        boolean result = isStaticFile(request.getRequestURI());
        if (!result){
            long endTime = System.currentTimeMillis();
            long startTime = dealTimeThreadLoacal.get();

            logger.info("本次请求["+request.getRequestURI()+"]处理时间:"+(endTime-startTime)+"ms");


        }
        //super.afterCompletion(request, response, handler, ex);
    }


}

package cn.muwei.service;

import cn.muwei.dao.MovieDAO;

import java.util.List;

public class SearchMovieService {
    public List searchallmovie(){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchallmovie(100);
        dao.close();
        return list;
    }
    public List searchmovie_Chinese(){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchmovie("内地", 100);
        dao.close();
        return list;
    }

    public List searchmovie_Usa(){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchmovie("美国", 100);
        dao.close();
        return list;
    }

    public List searchmovie_keyword(String keyword){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchmovieBykeyword(keyword, 100);
        dao.close();
        return list;
    }
}
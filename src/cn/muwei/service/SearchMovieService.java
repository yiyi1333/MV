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
}
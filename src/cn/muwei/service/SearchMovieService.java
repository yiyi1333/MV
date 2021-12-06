package cn.muwei.service;

import cn.muwei.dao.MovieDAO;
import cn.muwei.entity.Movie;

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

    public Movie searchmoviebyid(String movid){
        MovieDAO dao = new MovieDAO();
        Movie movie = dao.searchmovieByid(movid);
        dao.close();
        return movie;
    }

    public List RankByrate(){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchMovieOrderByRate(100);
        dao.close();
        return list;
    }

    public List RankBypopular(){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchMovieOrderByPopular(100);
        dao.close();
        return list;
    }

    public List CollectionList(String username){
        MovieDAO dao = new MovieDAO();
        List list = dao.Collection(username);
        dao.close();
        return list;
    }

    public List searchSimilarMovie(String movieId){
        MovieDAO dao = new MovieDAO();
        List list = dao.searchSimilarMovie(movieId);
        dao.close();
        return list;
    }
}

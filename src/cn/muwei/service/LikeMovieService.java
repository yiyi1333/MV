package cn.muwei.service;

import cn.muwei.dao.CollectionDAO;

public class LikeMovieService {
    public boolean CollectionMovie(String username, String movieid){
        CollectionDAO dao = new CollectionDAO();
        if(dao.AddtoCollection(username, movieid)){
            return true;
        }
        else {
            return false;
        }
    }
    public boolean LikeMovie(String username, String movieid){
        CollectionDAO dao = new CollectionDAO();
        if(dao.AddtoLike(username, movieid)){
            return true;
        }
        else {
            return false;
        }
    }
    public boolean UnlikeMovie(String username, String movieid){
        CollectionDAO dao = new CollectionDAO();
        if(dao.AddtoUnlike(username, movieid)){
            return true;
        }
        else {
            return false;
        }
    }
}

<%--
  Created by IntelliJ IDEA.
  User: rainbow
  Date: 2021/10/24
  Time: 22:26
  To change this template use File | Settings | File Templates.
--%>
<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<header class="header-style-two">
    <div id="sticky-header" class="menu-area">
        <div class="container custom-container">
            <div class="row">
                <div class="col-8">
                    <div class="mobile-nav-toggler"><i class="fas fa-bars"></i></div>
                    <div class="menu-wrap">
                        <nav class="menu-nav show">
                            <div class="logo">
                                <a href="index.html">
                                    <img src="css_lib/img/logo/logo.png" alt="Logo">
                                </a>
                            </div>
                            <div class="navbar-wrap main-menu d-none d-lg-flex">
                                <ul class="navigation">
                                    <li class="active menu-item-has-children"><a href="#">主页</a>
                                    </li>
                                    <li class="menu-item-has-children"><a href="#">全部电影</a>
                                    </li>
                                    <li><a href="tv-show.html">电影推荐</a></li>
                                    <li><a href="pricing.html">个人观影统计</a></li>
                                    <li><a href="pricing.html">个人信息</a></li>
                                </ul>
                            </div>
                            <div class="header-action d-none d-md-block justify-content-end">
                                <ul>
                                    <s:if test="#session.User==null">
                                        <li class="header-btn"><a href="login.jsp" class="btn">登录</a></li>
                                        <li class="header-btn"><a href="register.jsp" class="btn">注册</a></li>
                                    </s:if>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- Mobile Menu  -->
                    <div class="mobile-menu">
                        <div class="close-btn"><i class="fas fa-times"></i></div>

                        <nav class="menu-box">
                            <div class="nav-logo"><a href="index.html"><img src="css_lib/img/logo/logo.png" alt="" title=""></a>
                            </div>
                            <div class="menu-outer">
                                <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->

                                <ul class="navigation">
                                    <li class="active menu-item-has-children"><a href="#">Home</a>
                                        <ul class="submenu">
                                            <li><a href="index.html">Home One</a></li>
                                            <li class="active"><a href="index-2.html">Home Two</a></li>
                                        </ul>
                                        <div class="dropdown-btn"><span class="fas fa-angle-down"></span></div></li>
                                    <li class="menu-item-has-children"><a href="#">Movie</a>
                                        <ul class="submenu">
                                            <li><a href="movie.html">Movie</a></li>
                                            <li><a href="movie-details.html">Movie Details</a></li>
                                        </ul>
                                        <div class="dropdown-btn"><span class="fas fa-angle-down"></span></div></li>
                                    <li><a href="tv-show.html">tv show</a></li>
                                    <li><a href="pricing.html">Pricing</a></li>
                                    <li class="menu-item-has-children"><a href="#">blog</a>
                                        <ul class="submenu">
                                            <li><a href="blog.html">Our Blog</a></li>
                                            <li><a href="blog-details.html">Blog Details</a></li>
                                        </ul>
                                        <div class="dropdown-btn"><span class="fas fa-angle-down"></span></div></li>
                                    <li><a href="contact.html">contacts</a></li>
                                </ul>
                            </div>
                            <div class="social-links">
                                <ul class="clearfix">
                                    <li><a href="#"><span class="fab fa-twitter"></span></a></li>
                                    <li><a href="#"><span class="fab fa-facebook-square"></span></a></li>
                                    <li><a href="#"><span class="fab fa-pinterest-p"></span></a></li>
                                    <li><a href="#"><span class="fab fa-instagram"></span></a></li>
                                    <li><a href="#"><span class="fab fa-youtube"></span></a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <div class="menu-backdrop"></div>
                    <!-- End Mobile Menu -->
                </div>
            </div>
        </div>
    </div>
</header>


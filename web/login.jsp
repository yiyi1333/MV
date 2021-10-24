<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: yiyi
  Date: 2021/10/24
  Time: 14:41
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js" lang="">
<head>
    <meta charset="utf-8">
    <meta http-equiv="x-ua-compatible" content="ie=edge">
    <title>目唯 - Online Movies & TV Shows Template</title>
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width, initial-scale=1">

    <link rel="shortcut icon" type="image/x-icon" href="img/favicon.png">
    <!-- Place favicon.ico in the root directory -->

    <!-- CSS here -->
    <link rel="stylesheet" href="css/bootstrap.min.css">
    <link rel="stylesheet" href="css/animate.min.css">
    <link rel="stylesheet" href="css/magnific-popup.css">
    <link rel="stylesheet" href="css/fontawesome-all.min.css">
    <link rel="stylesheet" href="css/owl.carousel.min.css">
    <link rel="stylesheet" href="css/flaticon.css">
    <link rel="stylesheet" href="css/odometer.css">
    <link rel="stylesheet" href="css/aos.css">
    <link rel="stylesheet" href="css/slick.css">
    <link rel="stylesheet" href="css/default.css">
    <link rel="stylesheet" href="css/style.css">
    <link rel="stylesheet" href="css/responsive.css">

</head>
<body>

<!-- preloader -->
<div id="preloader">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <img src="https://themebeyond.com/html/movflx/img/preloader.svg" alt="">
        </div>
    </div>
</div>
<!-- preloader-end -->

<!-- Scroll-top -->
<button class="scroll-top scroll-to-target" data-target="html">
    <i class="fas fa-angle-up"></i>
</button>
<!-- Scroll-top-end-->

<!-- header-area -->
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
                                    <img src="img/logo/logo.png" alt="Logo">
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
                            <div class="header-action d-none d-md-block">
                                <ul>
                                    <!--                                    <li class="header-search"><a href="#" data-toggle="modal"-->
                                    <!--                                                                 data-target="#search-modal">-->
                                    <!--                                        <i class="fas fa-search"></i></a></li>-->
                                    <li class="header-btn"><a href="#" class="btn">登录</a></li>
                                    <li class="header-btn"><a href="#" class="btn">注册</a></li>
                                </ul>
                            </div>
                        </nav>
                    </div>
                    <!-- Mobile Menu  -->
                    <div class="mobile-menu">
                        <div class="close-btn"><i class="fas fa-times"></i></div>

                        <nav class="menu-box">
                            <div class="nav-logo"><a href="index.html"><img src="img/logo/logo.png" alt="" title=""></a>
                            </div>
                            <div class="menu-outer">
                                <!--Here Menu Will Come Automatically Via Javascript / Same Menu as in Header-->

                                <ul class="navigation">
                                    <li class="active menu-item-has-children"><a href="#">Home</a>
                                        <ul class="submenu">
                                            <li><a href="index.html">Home One</a></li>
                                            <li class="active"><a href="index-2.html">Home Two</a></li>
                                        </ul>
                                        <div class="dropdown-btn"><span class="fas fa-angle-down"></span></div>
                                    </li>
                                    <li class="menu-item-has-children"><a href="#">Movie</a>
                                        <ul class="submenu">
                                            <li><a href="movie.html">Movie</a></li>
                                            <li><a href="movie-details.html">Movie Details</a></li>
                                        </ul>
                                        <div class="dropdown-btn"><span class="fas fa-angle-down"></span></div>
                                    </li>
                                    <li><a href="tv-show.html">tv show</a></li>
                                    <li><a href="pricing.html">Pricing</a></li>
                                    <li class="menu-item-has-children"><a href="#">blog</a>
                                        <ul class="submenu">
                                            <li><a href="blog.html">Our Blog</a></li>
                                            <li><a href="blog-details.html">Blog Details</a></li>
                                        </ul>
                                        <div class="dropdown-btn"><span class="fas fa-angle-down"></span></div>
                                    </li>
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
<!-- header-area-end -->


<!-- main-area -->
<main>
    <section class="slider-area slider-bg" data-background="img/banner/s_slider_bg.jpg">
        <div class="container  mt-5 p-0" style="rgba(0,0,0,0.5);">
            <div class="row no-gutters">
                <div class="col-sm-6 align-self-center">
                    <div class="section-title text-center text-lg-left">
                        <h5 class="sub-title">目唯--你量身定做的电影推荐系统</h5>
                        <h1 class="title">登录</h1>
                    </div>
                    <div class="sign-in-from">
                        <h3 class="text-lg-left ">请输入你的账号和密码</h3>
                        <form class="mt-4" method="post" action="login.action">
                            <div class="form-group ">
                                <h4 class="text-white">账号</h4>
                                <input type="text" name="loginUser.id" class="form-control mb-0 bg-dark "
                                       placeholder="账号">
                            </div>
                            <div class="form-group text-warning">
                                <h4 class="text-white">密码</h4>
                                <input type="password" name="loginUser.password" class="form-control mb-0 bg-dark"
                                       placeholder="密码">
                            </div>
                            <div class="d-inline-block w-100">
                                <button type="submit" class="btn btn-primary float-right ">登录</button>
                            </div>
                            <div class="sign-info">
                                <h4 class="dark-color d-inline-block line-height-2 text-primary">是否没有账号？ <a
                                        href="sign-up.html" class="text-warning">注册</a></h4>
                                <ul class="iq-social-media">
                                    <li><a href="#"><i class="ri-facebook-box-line"></i></a></li>
                                    <li><a href="#"><i class="ri-twitter-line"></i></a></li>
                                    <li><a href="#"><i class="ri-instagram-line"></i></a></li>
                                </ul>
                            </div>
                        </form>
                    </div>
                </div>
                <div class="col-sm-6 text-center">
                    <div class="sign-in-detail text-dark">

                        <div class="carousel-inner owl-carousel" data-autoplay="true" data-loop="true"
                             data-nav="false"
                             data-dots="true" data-items="1" data-items-laptop="1" data-items-tab="1"
                             data-items-mobile="1" data-items-mobile-sm="1" data-margin="0">
                            <div class="item">
                                <img src="img/sign-in-1.png" class="img-fluid mb-4" alt="logo">
                            </div>
                            <div class="item">
                                <img src="img/sign-in-2.png" class="img-fluid mb-4" alt="logo">
                            </div>
                            <div class="item">
                                <img src="img/sign-in-3.png" class="img-fluid mb-4" alt="logo">
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</main>
<!-- main-area-end -->


<!-- footer-area -->
<footer>
    <div class="footer-top-wrap">
        <div class="container">
            <div class="footer-menu-wrap">
                <div class="row">
                    <div class="col-lg-2">
                        <div class="footer-logo">
                            <a href="index.html"><img src="img/logo/logo.png" alt=""></a>
                        </div>
                    </div>
                    <div class="col-lg-4">
                        <div class="copyright-wrap">
                            <div class="container ">
                                <div class="copyright-text">
                                    <p>Copyright &copy; 2022. All Rights Reserved By zyx&zzy&yqx</a>
                                    </p>
                                </div>
                            </div>
                        </div>
                    </div>
                    <div class="col-lg-6">
                        <div class="footer-menu">
                            <nav>
                                <ul class="navigation">
                                    <li><a href="index.html">主页</a></li>
                                    <li><a href="index.html">全部电影</a></li>
                                    <li><a href="index.html">电影推荐</a></li>
                                    <li><a href="index.html">个人观影统计</a></li>
                                    <li><a href="pricing.html">个人信息</a></li>
                                </ul>

                            </nav>
                        </div>
                    </div>

                </div>

            </div>

        </div>
    </div>

</footer>
<!-- footer-area-end -->

<!-- JS here -->
<script src="js/jquery.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/custom.js"></script>
<script src="js/vendor/jquery-3.6.0.min.js"></script>
<script src="js/popper.min.js"></script>
<script src="js/bootstrap.min.js"></script>
<script src="js/isotope.pkgd.min.js"></script>
<script src="js/imagesloaded.pkgd.min.js"></script>
<script src="js/jquery.magnific-popup.min.js"></script>
<script src="js/owl.carousel.min.js"></script>
<script src="js/jquery.odometer.min.js"></script>
<script src="js/jquery.appear.js"></script>
<script src="js/slick.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>


</body>
</html>


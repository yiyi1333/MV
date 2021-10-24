<%--
  Created by IntelliJ IDEA.
  User: yiyi
  Date: 2021/10/24
  Time: 14:37
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<!doctype html>
<html class="no-js" lang="">
<head>
  <meta charset="utf-8">
  <meta http-equiv="x-ua-compatible" content="ie=edge">
  <title>目唯 - Online Movies & TV Shows Template</title>
  <meta name="description" content="">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <meta name="referrer" content="no-referrer">
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
              <div class="header-action d-none d-md-block justify-content-end">
                <ul>
                  <!--                                    <li class="header-search"><a href="#" data-toggle="modal"-->
                  <!--                                                                 data-target="#search-modal">-->
                  <!--                                        <i class="fas fa-search"></i></a></li>-->
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
<!-- header-area-end -->


<!-- main-area -->
<main>
  <!-- slider-area -->

  <section class="slider-area slider-bg" data-background="img/banner/s_slider_bg.jpg">
    <div class="slider-active">
      <div class="slider-item">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-24 col-lg-6 order-0 order-lg-2">
              <div class="slider-img text-center text-lg-right  movie-item-three"
                   data-animation="fadeInRight"
                   data-delay="1s">
                <div class="movie-poster">
                  <img src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910812549.jpg" alt="">
                  <ul class="overlay-btn">
                    <li class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                    </li>
                    <li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
                           class="popup-video btn">收藏</a></li>
                    <li><a href="movie-details.html" class="btn">喜欢</a></li>
                    <li><a href="movie-details.html" class="btn">不感兴趣</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="banner-content">
                <h6 class="sub-title" data-animation="fadeInUp" data-delay=".2s">目唯</h6>
                <h2 class="title" data-animation="fadeInUp" data-delay=".4s">哈利·波特与阿兹卡班的囚徒 <span>Harry Potter and the Prisoner of Azkaban</span>
                </h2>
                <div class="banner-meta" data-animation="fadeInUp" data-delay=".6s">
                  <ul>
                    <li class="quality">
                      <span>导演</span>
                      <span>阿方索·卡隆</span>
                    </li>
                    <li class="category">
                      <a href="#">剧集</a>
                    </li>
                    <li class="release-time">
                      <span><i class="far fa-calendar-alt"></i> 2004</span>
                      <span><i class="far fa-clock"></i> 128 min</span>
                    </li>
                  </ul>
                </div>
                <a href="#" class="banner-btn btn popup-video" data-animation="fadeInUp"
                   data-delay=".8s"><i class="fas fa-play">
                </i> 进入详细信息页</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-6 order-0 order-lg-2">
              <div class="slider-img text-center text-lg-right movie-item movie-item-three"
                   data-animation="fadeInRight"
                   data-delay="1s">
                <div class="movie-poster">
                  <img src="img/P2.jpg" alt="">
                  <ul class="overlay-btn">
                    <li class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                    </li>
                    <li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
                           class="popup-video btn">收藏</a></li>
                    <li><a href="movie-details.html" class="btn">喜欢</a></li>
                    <li><a href="movie-details.html" class="btn">不感兴趣</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="banner-content">
                <h6 class="sub-title" data-animation="fadeInUp" data-delay=".2s">目唯</h6>
                <h2 class="title" data-animation="fadeInUp" data-delay=".4s">《少年的你》
                  <span>Better Days</span>又名：少年的你，如此美丽</h2>
                <div class="banner-meta" data-animation="fadeInUp" data-delay=".6s">
                  <ul>
                    <li class="quality">
                      <span>导演</span>
                      <span>曾国祥</span>
                    </li>
                    <li class="category">
                      <a href="#">剧集</a>
                      <a href="#">爱情 </a>
                      <a href="#">犯罪</a>
                    </li>
                    <li class="release-time">
                      <span><i class="far fa-calendar-alt"></i> 2021</span>
                      <span><i class="far fa-clock"></i> 128 min</span>
                    </li>
                  </ul>
                </div>
                <a href="#" class="banner-btn btn popup-video" data-animation="fadeInUp"
                   data-delay=".8s"><i class="fas fa-play">

                </i> 进入详细信息页</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-6 order-0 order-lg-2">
              <div class="slider-img text-center text-lg-right movie-item movie-item-three"
                   data-animation="fadeInRight"
                   data-delay="1s">
                <div class="movie-poster">
                  <img src="img/P3.jpg" alt="">
                  <ul class="overlay-btn">
                    <li class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                    </li>
                    <li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
                           class="popup-video btn">收藏</a></li>
                    <li><a href="movie-details.html" class="btn">喜欢</a></li>
                    <li><a href="movie-details.html" class="btn">不感兴趣</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="banner-content">
                <h6 class="sub-title" data-animation="fadeInUp" data-delay=".2s">目唯</h6>
                <h2 class="title" data-animation="fadeInUp" data-delay=".4s">《再见，少年》 <span>Farewell, My Lad</span>又名：
                  南方，有雾</h2>
                <div class="banner-meta" data-animation="fadeInUp" data-delay=".6s">
                  <ul>
                    <li class="quality">
                      <span>导演</span>
                      <span>殷若昕</span>
                    </li>
                    <li class="category">
                      <a href="#">剧集</a>
                    </li>
                    <li class="release-time">
                      <span><i class="far fa-calendar-alt"></i> 2021</span>
                      <span><i class="far fa-clock"></i> 128 min</span>
                    </li>
                  </ul>
                </div>
                <a href="#" class="banner-btn btn popup-video" data-animation="fadeInUp"
                   data-delay=".8s"><i class="fas fa-play">

                </i> 进入详细信息页</a>
              </div>
            </div>
          </div>
        </div>
      </div>
      <div class="slider-item">
        <div class="container">
          <div class="row align-items-center">
            <div class="col-lg-6 order-0 order-lg-2">
              <div class="slider-img text-center text-lg-right movie-item movie-item-three"
                   data-animation="fadeInRight"
                   data-delay="1s">
                <div class="movie-poster">
                  <img src="img/P4.jpg" alt="">
                  <ul class="overlay-btn">
                    <li class="rating">
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                      <i class="fas fa-star"></i>
                    </li>
                    <li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E"
                           class="popup-video btn">收藏</a></li>
                    <li><a href="movie-details.html" class="btn">喜欢</a></li>
                    <li><a href="movie-details.html" class="btn">不感兴趣</a></li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="col-lg-6">
              <div class="banner-content">
                <h6 class="sub-title" data-animation="fadeInUp" data-delay=".2s">目唯</h6>
                <h2 class="title" data-animation="fadeInUp" data-delay=".4s">《我要我们在一起》<span>Love Will Tear Us Apart</span>又名：与我十年长跑的女友明天要嫁人了
                </h2>
                <div class="banner-meta" data-animation="fadeInUp" data-delay=".6s">
                  <ul>
                    <li class="quality">
                      <span>导演</span>
                      <span>沙漠</span>
                    </li>
                    <li class="category">
                      <a href="#">剧集</a>
                      <a href="#">爱情</a>
                    </li>
                    <li class="release-time">
                      <span><i class="far fa-calendar-alt"></i> 2021</span>
                      <span><i class="far fa-clock"></i> 128 min</span>
                    </li>
                  </ul>
                </div>
                <a href="#" class="banner-btn btn popup-video" data-animation="fadeInUp"
                   data-delay=".8s"><i class="fas fa-play">

                </i> 进入详细信息页</a>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- slider-area-end -->


  <!-- up-coming-movie-area -->
  <section class="ucm-area ucm-bg" data-background="img/bg/ucm_bg.jpg">
    <div class="ucm-bg-shape" data-background="img/bg/ucm_bg_shape.png"></div>
    <div class="container">
      <div class="row align-items-end mb-55">
        <div class="col-lg-6">
          <div class="section-title text-center text-lg-left">
            <span class="sub-title">院线风暴</span>
            <h2 class="title">即将上线电影预测</h2>
          </div>
        </div>

      </div>
      <div class="tab-content" id="myTabContent">
        <div class="tab-pane fade show active" id="tvShow" role="tabpanel" aria-labelledby="tvShow-tab">
          <div class="ucm-active owl-carousel">
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/P1.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">电影1</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">剧集</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/P2.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">电影2</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">喜剧</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/P3.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">电影3</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">剧集</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/P4.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">电影4</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">8k</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="movies" role="tabpanel" aria-labelledby="movies-tab">
          <div class="ucm-active owl-carousel">
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster05.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Cooking</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">hd</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster06.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Hikers</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">4k</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster07.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">Life Quotes</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">hd</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster08.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Beachball</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">4k</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster03.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Dog Woof</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">hd</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
        <div class="tab-pane fade" id="anime" role="tabpanel" aria-labelledby="anime-tab">
          <div class="ucm-active owl-carousel">
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster01.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">Women's Day</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">hd</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster02.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Perfect Match</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">4k</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster03.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Dog Woof</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">hd</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster04.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Easy Reach</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">8k</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
            <div class="movie-item mb-50">
              <div class="movie-poster">
                <a href="movie-details.html"><img src="img/poster/ucm_poster05.jpg" alt=""></a>
              </div>
              <div class="movie-content">
                <div class="top">
                  <h5 class="title"><a href="movie-details.html">The Cooking</a></h5>
                  <span class="date">2021</span>
                </div>
                <div class="bottom">
                  <ul>
                    <li><span class="quality">hd</span></li>
                    <li>
                      <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                      <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                    </li>
                  </ul>
                </div>
              </div>
            </div>
          </div>
        </div>
      </div>
    </div>
  </section>
  <!-- up-coming-movie-area-end -->


  <!-- top-rated-movie -->
  <section class="top-rated-movie tr-movie-bg" data-background="img/bg/tr_movies_bg.jpg">
    <div class="container">
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="section-title text-center mb-50">
            <span class="sub-title">电影大全</span>
            <h2 class="title">电影排名</h2>
          </div>
        </div>
      </div>
      <div class="row justify-content-center">
        <div class="col-lg-8">
          <div class="tr-movie-menu-active text-center">
            <button class="active" data-filter="*">热门</button>
            <button class="" data-filter=".cat-one">最新</button>
            <button class="" data-filter=".cat-two">豆瓣高分</button>
            <button class="" data-filter=".cat-three">冷门佳片</button>

          </div>
        </div>
      </div>
      <div class="row tr-movie-active">
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P1.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影1</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P2.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影2</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P3.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影3</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P4.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影4</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P1.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影1</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P2.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影2</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-two">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P3.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影3</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>
        <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one cat-three">
          <div class="movie-item mb-60">
            <div class="movie-poster">
              <a href="movie-details.html"><img src="img/P4.jpg" alt=""></a>
            </div>
            <div class="movie-content">
              <div class="top">
                <h5 class="title"><a href="movie-details.html">电影4</a></h5>
                <span class="date">2021</span>
              </div>
              <div class="bottom">
                <ul>
                  <li><span class="quality">剧集</span></li>
                  <li>
                    <span class="duration"><i class="far fa-clock"></i> 128 min</span>
                    <span class="rating"><i class="fas fa-thumbs-up"></i> 3.5</span>
                  </li>
                </ul>
              </div>
            </div>
          </div>
        </div>


      </div>
    </div>
  </section>
  <!-- top-rated-movie-end -->


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


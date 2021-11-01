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
<jsp:include page="public/header.jsp"/>
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

<jsp:include page="public/nav.jsp"/>
<!-- header-area-end -->


<!-- main-area -->
<main>
  <!-- slider-area -->

  <section class="slider-area slider-bg" data-background="css_lib/img/banner/s_slider_bg.jpg">
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
                  <img src="css_lib/img/P2.jpg" alt="">
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
                  <img src="css_lib/img/P3.jpg" alt="">
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
                  <img src="css_lib/img/P4.jpg" alt="">
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
  <section class="ucm-area ucm-bg" data-background="css_lib/img/bg/ucm_bg.jpg">
    <div class="ucm-bg-shape" data-background="css_lib/img/bg/ucm_bg_shape.png"></div>
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
                <a href="movie-details.html"><img src="css_lib/img/P1.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/P2.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/P3.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/P4.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster05.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster06.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster07.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster08.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster03.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster01.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster02.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster03.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster04.jpg" alt=""></a>
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
                <a href="movie-details.html"><img src="css_lib/img/poster/ucm_poster05.jpg" alt=""></a>
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
  <section class="top-rated-movie tr-movie-bg" data-background="css_lib/img/bg/tr_movies_bg.jpg">
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
              <a href="movie-details.html"><img src="css_lib/img/P1.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P2.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P3.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P4.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P1.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P2.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P3.jpg" alt=""></a>
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
              <a href="movie-details.html"><img src="css_lib/img/P4.jpg" alt=""></a>
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
<jsp:include page="public/footer.jsp"/>
<!-- footer-area-end -->


<!-- JS here -->
<script src="css_lib/js/vendor/jquery-3.6.0.min.js"></script>
<script src="css_lib/js/popper.min.js"></script>
<script src="css_lib/js/bootstrap.min.js"></script>
<script src="css_lib/js/isotope.pkgd.min.js"></script>
<script src="css_lib/js/imagesloaded.pkgd.min.js"></script>
<script src="css_lib/js/jquery.magnific-popup.min.js"></script>
<script src="css_lib/js/owl.carousel.min.js"></script>
<script src="css_lib/js/jquery.odometer.min.js"></script>
<script src="css_lib/js/jquery.appear.js"></script>
<script src="css_lib/js/slick.min.js"></script>
<script src="css_lib/js/ajax-form.js"></script>
<script src="css_lib/js/wow.min.js"></script>
<script src="css_lib/js/aos.js"></script>
<script src="css_lib/js/plugins.js"></script>
<script src="css_lib/js/main.js"></script>
</body>
</html>


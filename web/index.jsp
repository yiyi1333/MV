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
                        <div class="col-lg-6 order-0 order-lg-2">
                            <div class="slider-img text-center text-lg-right  movie-item-three"
                                 data-animation="fadeInRight"
                                 data-delay="1s">
                                <div class="movie-poster">
                                    <div align="center"><img
                                            src="https://img1.doubanio.com/view/photo/s_ratio_poster/public/p1910812549.jpg"
                                            alt=""></div>
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
                                <a href="detail.action" class="banner-btn btn popup-video" data-animation="fadeInUp"
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
                                <a href="detail.action" class="banner-btn btn popup-video" data-animation="fadeInUp"
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
                                <a href="detail.action" class="banner-btn btn popup-video" data-animation="fadeInUp"
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
                                <a href="detail.action" class="banner-btn btn popup-video" data-animation="fadeInUp"
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


<%--
  Created by IntelliJ IDEA.
  User: yiyi
  Date: 2021/11/8
  Time: 0:33
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>>
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


<!-- main-area -->
<main>

    <!-- movie-details-area -->
    <section class="movie-details-area" data-background="css_lib/img/bg/movie_details_bg.jpg">
        <div class="container">
            <div class="row align-items-center position-relative">
                <div class="col-xl-4 col-lg-4">
                    <div class="movie-details-img">
                        <img src="<s:property value="#request.movie.posterUrl"/> " alt="显示异常">
                        <a href="#" class="popup-video"><img src="css_lib/img/images/play_icon.png" alt=""></a>
                    </div>
                </div>
                <div class="col-xl-8 col-lg-8">
                    <div class="movie-details-content">
<%--                        <h5>New Episodes</h5>--%>
                        <h2><s:property value="#request.movie.name"/> </h2>
                        <div class="banner-meta">
                            <ul>
                                <li class="quality">
                                    <span>Pg 18</span>
                                    <span>hd</span>
                                </li>
                                <li class="category">
                                    <a href="#"><s:property value="#request.movie.genre"/> </a>
                                </li>
                                <li class="release-time">
                                    <span><i class="far fa-calendar-alt"></i> <s:property value="#request.movie.releasetime"/></span>
                                    <span><i class="far fa-clock"></i> <s:property value="#request.movie.length"/></span>
                                </li>
                            </ul>
                        </div>
                        <p><s:property value="#request.movie.summary"/></p>
                        <div class="movie-details-prime">
                            <ul>
                                <li class="share"><a href="#"><i class="fas fa-share-alt"></i> 分享</a></li>
                                <li class="streaming">
                                    <h6>主要视频</h6>
                                    <span>流媒体频道</span>
                                </li>
                                <li class="watch"><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E" class="btn popup-video"><i class="fas fa-play"></i>加入喜欢</a></li>
                            </ul>
                        </div>
                        <h3>相似电影</h3>
                        <div class="container">
                            <div class="row tr-movie-active">
                            <s:iterator value="#request.similarmovie">
                                <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-three">
                                        <div class="movie-item movie-item-three mb-50">
                                            <div class="movie-poster">
                                                <img src="<s:property value="posterUrl"/>" alt="显示异常">
                                                <ul class="overlay-btn">
                                                    <li><a href="#" class="popup-video btn">加入喜欢</a></li>
                                                    <li><a href="detail.action?movid=<s:property value="movid"/>" class="btn">详情</a></li>
                                                </ul>
                                        </div>
                                    </div>
                                </div>
                            </s:iterator>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>


</main>
<!-- main-area-end -->


<jsp:include page="public/footer.jsp"/>





<!-- JS here -->
<script src="css_lib/js/vendor/jquery-3.6.0.min.js"></script>
<script src="css_lib/js/popper.min.js"></script>
<script src="css_lib/js/bootstrap.min.js"></script>
<script src="css_lib/js/isotope.pkgd.min.js"></script>
<script src="css_lib/js/imagesloaded.pkgd.min.js"></script>
<script src="css_lib/js/jquery.magnific-popup.min.js"></script>
<script src="css_lib/js/owl.carousel.min.js"></script>
<script src="css_lib/js/jquery.odometer.min.js"></script>
<script src="css_lib/s/jquery.appear.js"></script>
<script src="css_lib/js/slick.min.js"></script>
<script src="js/ajax-form.js"></script>
<script src="js/wow.min.js"></script>
<script src="js/aos.js"></script>
<script src="js/plugins.js"></script>
<script src="js/main.js"></script>
</body>
</html>


<%--
  Created by IntelliJ IDEA.
  User: yiyi
  Date: 2021/11/7
  Time: 16:48
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>>
<html>
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
<main>

    <!-- breadcrumb-area -->
    <section class="breadcrumb-area breadcrumb-bg" data-background="css_lib/img/bg/breadcrumb_bg.jpg">
        <div class="container">
            <div class="row">
                <div class="col-12">
                    <div class="breadcrumb-content">
                        <h2 class="title">MU <span>VI</span></h2>
                        <nav aria-label="breadcrumb">
                            <ol class="breadcrumb">
                                <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
                                <li class="breadcrumb-item" aria-current="page"><a href="searchallmovie.action">All Movie</a></li>
                            </ol>
                        </nav>
                    </div>
                </div>
            </div>
        </div>
    </section>
    <!-- breadcrumb-area-end -->

    <!-- movie-area -->
    <section class="movie-area movie-bg" data-background="css_lib/img/bg/movie_bg.jpg">
        <div class="container">
            <div class="row align-items-end mb-60">
                <div class="col-lg-6">
                    <div class="section-title text-center text-lg-left">
                        <span class="sub-title">RECOMMEND MOVIE</span>
                        <h2 class="title">????????????</h2>
                    </div>
                </div>
            </div>
            <div class="row tr-movie-active">
                <s:iterator value="movies">
                    <div class="col-xl-3 col-lg-4 col-sm-6 grid-item grid-sizer cat-one">
                        <div class="movie-item movie-item-three mb-50">
                            <div class="movie-poster">
                                <img src="<s:property value="posterUrl"/> " alt="????????????">
                                <ul class="overlay-btn">
                                    <li><a href="https://www.youtube.com/watch?v=R2gbPxeNk2E" class="popup-video btn">????????????</a></li>
                                    <li><a href="detail.action?movid=<s:property value="movid"/>" class="btn">??????</a></li>
                                </ul>
                            </div>
                            <div class="movie-content">
                                <div class="top">
                                    <h5 class="title"><a href="movie-details.html"><s:property value="name"/> </a></h5>
                                    <span class="date"><s:property value="releasetime"/> </span>
                                </div>
                                <div class="bottom">
                                    <ul>
                                        <li><span class="quality">??????</span></li>
                                        <li>
                                            <span class="duration"><i class="far fa-clock"></i><s:property value="length"/>  </span>
                                            <span class="rating"><i class="fas fa-thumbs-up"></i> <s:property value="rate"/> </span>
                                        </li>
                                    </ul>
                                </div>
                            </div>
                        </div>
                    </div>
                </s:iterator>
            </div>

        </div>
    </section>


</main>
<jsp:include page="public/footer.jsp"/>

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

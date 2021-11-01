<%@ taglib prefix="s" uri="/struts-tags" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js" lang="">
<jsp:include page="public/header.jsp"/>
<body>

<!--载入动画 -->
<div id="preloader">
    <div id="loading-center">
        <div id="loading-center-absolute">
            <img src="https://themebeyond.com/html/movflx/img/preloader.svg" alt="">
        </div>
    </div>
</div>

<!-- Scroll-top -->
<button class="scroll-top scroll-to-target" data-target="html">
    <i class="fas fa-angle-up"></i>
</button>

<jsp:include page="public/nav.jsp"/>

<!-- main-area -->
<main>
    <section class="slider-area slider-bg" data-background="css_lib/img/banner/s_slider_bg.jpg">
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
                                <input type="text" name="loginUser.username" class="form-control mb-0 bg-dark "
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
                                <img src="css_lib/img/sign-in-1.png" class="img-fluid mb-4" alt="logo">
                            </div>
                            <div class="item">
                                <img src="css_lib/img/sign-in-2.png" class="img-fluid mb-4" alt="logo">
                            </div>
                            <div class="item">
                                <img src="css_lib/img/sign-in-3.png" class="img-fluid mb-4" alt="logo">
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
</body>
</html>


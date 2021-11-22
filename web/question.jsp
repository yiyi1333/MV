<%--
  Created by IntelliJ IDEA.
  User: rainbow
  Date: 2021/11/21
  Time: 21:09
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>

<html class="no-js" lang="">
<link rel="stylesheet" href="css_lib/css/common.css">
<link rel="stylesheet" href="css_lib/css/reset.css">
<link rel="stylesheet" href="css_lib/css/style.css">

<jsp:include page="public/header.jsp"/>
<style>
    .quecontent {
        background-color: #0a455d;
    }

    .quemain-list {
        position: relative;
    }

    .problemList {
        float: left;
    }

    .quesubject {
        margin: 1rem 1.5rem;
        color: #fff;
    }

    .quesubject h3 {
        font-size: 1.5rem;
    }

    .quesubject p {
        font-size: 1rem;
        margin: 0.3rem 0.75rem;
        line-height: 1.2rem;
    }

    .queoption {
        margin: 0.2rem 0.5rem;
    }

    .queoption li {
        margin: 0.2rem 1rem 0.5rem;
        width: 6.8rem;
        position: relative;
        display: inline-flex;
    }

    .queoption li.on {
        background-color: #44b1c9;
        color: #fff;
        border: 0.1rem solid #44b1c9;
    }

    .queoption li span {
        width: 6rem;
        text-align: center;
        border-radius: 0.5rem;
        border: 0.1rem solid #fff;
        color: #fff;
        font-size: 1rem;
        padding: 0.3rem;
        display: block;
    }

    .queoption li .on span {
        background-color: #44b1c9;
        color: #fff;
        border: 0.1rem solid #44b1c9;
    }

    .quebtn-groups {
        width: 100%;
        height: 3rem;
        bottom: 0;
        left: 0;
        background-color: rgba(162, 201, 216, .8);
    }

    .quebtn-groups-height {
        height: 2rem;
    }

    .quesubmit {
        display: block;
        float: left;
        background-color: #44b1c9;
        color: #fff;
        width: 6rem;
        font-size: 0.8rem;
        padding: 0.5rem 0;
        text-align: center;
        /*border-radius: 0.15rem;*/
        margin: 0.5rem 2rem;
    }

    .quesubmit:active {
        background: rgba(68, 177, 201, .5);
    }

    .quebtn-groups .prev {
        position: absolute;
        left: 0;
        bottom: 0;
    }

    .quebtn-groups .next, .quebtn-groups .save {
        position: absolute;
        right: 0;
        bottom: 0;
    }

    input[type='checkbox'] {
        width: 100%;
        height: 100%;
        -webkit-appearance: checkbox;
        position: absolute;
        opacity: 0;
        top: 0;
        left: 0;
    }

    input[type='radio'] {
        width: 100%;
        height: 100%;
        -webkit-appearance: radio;
        position: absolute;
        opacity: 0;
        top: 0;
        left: 0;
    }

    input[type='checkbox']:checked + span, input[type='radio']:checked + span {
        background-color: #44b1c9;
        color: #fff;
        border: 0.1rem solid #44b1c9;
    }

</style>
<body>

<!-- Scroll-top -->
<button class="scroll-top scroll-to-target" data-target="html">
    <i class="fas fa-angle-up"></i>
</button>

<jsp:include page="public/nav.jsp"/>

<!-- main-area -->
<div>
    <section class="slider-area slider-bg" data-background="css_lib/img/banner/s_slider_bg.jpg">

        <div id="quecontent-page" class="quecontent-page m-auto bg-dark col-lg-10">
            <div class="container-fluid">
                <div class="row">
                    <div class="col-sm-12 align-self-center">
                        <div class="section-title text-center ">
                            <br>
                            <h2 class="title">为了给你推荐更好的内容，来做份问卷叭！</h2>
                            <br>
                            <br>
                        </div>

                        <div class="col-sm-12 bg-dark">
                            <div id="app">
                                <div class="quecontent">
                                    <div class="main">

                                        <form id="form1" runat="server" action="QuestionAction.action" method="post">
                                            <div class="quemain-list clearfix">

                                                <transition-group :name="transitionName">
                                                    <div class="problemList" v-show="dataIndex === index"
                                                         v-for="(item, index) in data" :key="index">
                                                        <div class="quesubject">
                                                            <h3>{{index+1}}.{{item.quesubject.title}}</h3>
                                                            <p>{{item.quesubject.describe}}</p>
                                                        </div>
                                                        <div class="queoption">
                                                            <ul class="clearfix">
                                                                <!-- 多选 -->
                                                                <li v-if="item.multiSelect == 2"
                                                                    v-for="(li, liIndex) in item.quesubject.queoption"
                                                                    :key="liIndex" @click="choiceCheck(index,liIndex)">
                                                                    <input type="checkbox" :value="li" name="message"
                                                                           v-model="item.checkbox"/>

                                                                    <span>{{li}}</span>
                                                                </li>
                                                                <!-- 单选 -->
                                                                <li v-if="item.multiSelect == 0"
                                                                    v-for="(li, liIndex) in item.quesubject.queoption"
                                                                    :key="liIndex" @click="choiceRadio(index,liIndex)">
                                                                    <input type="radio" :value="li" name="message"
                                                                           v-model="item.checkbox"/>
                                                                    <span>{{li}}</span>
                                                                </li>
                                                            </ul>
                                                        </div>
                                                    </div>
                                                </transition-group>
                                            </div>
                                            <div class="quebtn-groups-height" style="height: 10%">
                                                <div class="quebtn-groups clearfix">
                                                    <span v-show="isPrev" class="quesubmit prev"
                                                          @click="prev">上一题</span>
                                                    <span v-show="isNext" class="quesubmit next"
                                                          @click="next">下一题</span>
<%--                                                    <span v-show="isquesubmit" class="quesubmit save" @click="save"><a--%>
<%--                                                            href="login.jsp">提交</a> </span>--%>
                                                    <input v-show="isquesubmit" type="submit" class="quesubmit save" @click="save"
                                                    value="提交">
                                                </div>
                                            </div>
                                        </form>
                                    </div>
                                </div>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </section>

</div>

<!-- main-area-end -->

<jsp:include page="public/footer.jsp"/>
</body>
</html>
<script>
    new Vue({
        el: '#app',
        data: {
            transitionName: 'slide',
            data: [
                {
                    quesubject: {
                        title: '您的性别是',
                        describe: '提供性别信息可以更好的找到喜欢的电影哦~',
                        queoption: ['11', '12', '13',],//选项
                    },
                    checkbox: [],
                    multiSelect: 0,//2为多选、0为单选、1为组合单选
                    isAddData: false,//判断是否已加载新数据
                },

                {
                    quesubject: {
                        title: '您的观影目的',
                        describe: '是为什么想看电影，想在什么时候看电影呢（多选）',
                        queoption: ['21', '22', '23', '24', '25', '26',],//选项
                    },
                    checkbox: [],
                    multiSelect: 2,//是否是多选
                    isAddData: false,//判断是否已加载新数据
                },
                {
                    quesubject: {
                        title: '观看场景',
                        describe: '描述以下现在或者经常看电影的场景（多选）',
                        queoption: ['31', '32', '33', '34', '35', '36'],//选项
                    },
                    checkbox: [],
                    multiSelect: 2,//是否是多选

                    isAddData: false,//判断是否已加载新数据
                },
                {
                    quesubject: {
                        title: '观影方向',
                        describe: '是选喜欢或者想看的电影题材呢（多选）',
                        queoption: ['41', '42', '43', '44', '45', '46', '47', '48'],//选项
                    },
                    checkbox: [],
                    multiSelect: 2,//是否是多选
                    isAddData: false,//判断是否已加载新数据
                },
            ],

            dataIndex: 0,//问题索引
            isPrev: false,//上一题是否显示
            isNext: false,//下一题是否显示
            isquesubmit: false,//提交是否显示
        },
        watch: {
            dataIndex(news, olds) {//动画切换
                this.transitionName = news < olds ? 'slide_back' : 'slide';
            }
        },
        methods: {

            choiceRadio(index, liIndex) {//单选操作
                this.choice(index, liIndex, 0, null);
            },
            choiceCheck(index, liIndex) {//多选操作
                this.choice(index, liIndex, 2, null);
            },
            choice(index, liIndex, choiceStyle, liChildIndex) {
                //console.log(liIndex)
                setTimeout(() => {

                    if (this.data[index].checkbox.length > 0) {
                        this.isNext = true;
                        this.data[index].isSelect = true;
                    } else {
                        this.isNext = false;
                        this.data[index].isSelect = false;
                    }

                    if (this.dataIndex === (this.data.length - 1)) {//判断是否是最后一题，并隐藏下一题按钮
                        this.isNext = false;
                    }
                })

            },

            prev() {//上一题
                this.dataIndex -= 1;
                if (this.dataIndex <= 0) {
                    this.isPrev = false;
                }
                this.isNext = true;
                this.isquesubmit = false;
            },
            next() {//下一题
                this.dataIndex += 1;
                if (this.dataIndex > 0) {
                    this.isPrev = true;
                    if (this.data[this.dataIndex].isSelect) {
                        this.isNext = true;
                    } else {
                        this.isNext = false;
                    }
                }
                if (this.data.length - 1 == this.dataIndex) {
                    this.isNext = false;
                    this.isquesubmit = true;
                }
            },
            save() {//保存数据---这是完成按钮
                if (this.data[this.dataIndex].isSelect) {
                    console.log(this.data);//this.data---需要保存到数据库的数据
                } else {
                    alert(this.data[this.dataIndex].quesubject.describe + '必选');
                }
            },

            // questiondata: function() {
            //     axios.get("http://localhost:8080/MV_war_exploded/index.jsp" + this.truedata)
            //         .then(value => {
            //             //this指的是当前vue对象，给vue中
            //             this.数据 = value.data.data;
            //         })
            // }
        },

        mounted() {
            this.questiondata();
        }
    });
</script>

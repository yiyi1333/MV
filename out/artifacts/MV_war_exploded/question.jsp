<%@ taglib prefix="s" uri="/struts-tags" %>>
<%--
  Created by IntelliJ IDEA.
  User: rainbow
  Date: 2021/10/25
  Time: 10:10
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
                                                                    <input type="checkbox" :value="li"
                                                                           v-model="item.checkbox"/>
                                                                    <span>{{li}}</span>
                                                                </li>
                                                                <!-- 单选 -->
                                                                <li v-if="item.multiSelect == 0"
                                                                    v-for="(li, liIndex) in item.quesubject.queoption"
                                                                    :key="liIndex" @click="choiceRadio(index,liIndex)">
                                                                    <input type="radio" :value="li"
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
                                                    <span v-show="isPrev" class="quesubmit prev" @click="prev">上一题</span>
                                                    <span v-show="isNext" class="quesubmit next" @click="next">下一题</span>
                                                    <span v-show="isquesubmit" class="quesubmit save" @click="save"><a href="login.jsp">提交</a> </span>
<%--                                                    <input v-show="isquesubmit" type="quesubmit"  class="quesubmit save"--%>
<%--                                                           value="提交">--%>
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
                        queoption: ['男', '女', '不告诉你呢',],//选项
                    },
                    checkbox: [],
                    multiSelect: 0,//2为多选、0为单选、1为组合单选
                    isSelect: false,//判断是否选中其中一个
                    isFirst: true,//判断是否点击多选第一个按钮
                    isAddData: false,//判断是否已加载新数据
                },

                {
                    quesubject: {
                        title: '您的观影目的',
                        describe: '是为什么想看电影，想在什么时候看电影呢（多选）',
                        queoption: ['吃饭刷剧时候看看', '无聊会去看', '是个有艺术细胞的人呢', 'emo了', '电影伴我入眠', '高深莫测的人不应该透露信息',],//选项
                    },
                    checkbox: [],
                    multiSelect: 2,//是否是多选
                    isSelect: false,//判断是否选中其中一个
                    isFirst: true,//判断是否点击多选第一个按钮
                    isAddData: false,//判断是否已加载新数据
                },
                {
                    quesubject: {
                        title: '观看场景',
                        describe: '描述以下现在或者经常看电影的场景（多选）',
                        queoption: ['想赖床的早晨', '恰饭的空隙', '懒洋洋的午后', '安静的摸鱼场所', '困困的躺在床上', '未知的氛围'],//选项
                    },
                    checkbox: [],
                    multiSelect: 2,//是否是多选
                    isSelect: false,//判断是否选中其中一个
                    isFirst: true,//判断是否点击多选第一个按钮
                    isAddData: false,//判断是否已加载新数据
                },
                {
                    quesubject: {
                        title: '观影方向',
                        describe: '是选喜欢或者想看的电影题材呢（多选）',
                        queoption: ['动作', '战争', '科幻', '悬疑', '喜剧', '爱情', '励志', '动画', '惊悚', '犯罪', '情色', '记录', '剧情', '想瘫瘫，给我随机叭'],//选项
                    },
                    checkbox: [],
                    multiSelect: 2,//是否是多选
                    isSelect: false,//判断是否选中其中一个
                    isFirst: true,//判断是否点击多选第一个按钮
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
            choicCompose(index, liIndex, liChildIndex) {//组合单选
                this.choice(index, liIndex, 1, liChildIndex);
            },
            choiceRadio(index, liIndex) {//单选操作
                this.choice(index, liIndex, 0, null);
            },
            choiceCheck(index, liIndex) {//多选操作
                this.choice(index, liIndex, 2, null);
            },
            choice(index, liIndex, choiceStyle, liChildIndex) {
                //console.log(liIndex)
                setTimeout(() => {

                    switch (choiceStyle) {//判断多选、单选、组合单选
                        case 0://单选
                            let radioTitle = this.data[index].quesubject.title;
                            //运动情况显示是否添加数据
                            if (radioTitle == '运动情况' && (this.data[index].checkbox == '小于1小时' || this.data[index].checkbox == '1-3小时' || this.data[index].checkbox == '4-5小时' || this.data[index].checkbox == '大于5小时')) {
                                if (!this.data[index].isAddData) {//添加
                                    for (let s = 0; s < this.sports.length; s++) {
                                        this.data.splice(index + 1, 0, this.sports[s]);
                                    }
                                    this.data[index].isAddData = true;
                                }
                            } else if (radioTitle == '运动情况' && (this.data[index].checkbox == '不锻炼')) {
                                if (this.data[index].isAddData) {//删除
                                    this.data.splice(index + 1, this.sports.length);
                                    this.data[index].isAddData = false;
                                }
                            }
                            break;
                        case 1://组合单选
                            let childIndex = liIndex * 2 + liChildIndex;
                            if (this.$refs.childItem[childIndex].className.length <= 0) {
                                this.$refs.childItem[childIndex].className = 'on';// 选中添加类
                            } else {
                                this.$refs.childItem[childIndex].className = '';// 选中再取消
                            }
                            //判断索引-
                            if (childIndex === 0 || childIndex === 1) {
                                if (this.data[index].isAddData) {//删除
                                    this.data.splice(index + 1, this.smoke.length);
                                    this.data[index].isAddData = false;
                                }
                                this.$refs.childItem[childIndex].className = 'on';
                                this.$refs.childItem[2].className = '';
                                this.$refs.childItem[3].className = '';

                            } else if (childIndex === 2 || childIndex === 3) {
                                if (!this.data[index].isAddData) {//添加
                                    for (let s = 0; s < this.smoke.length; s++) {
                                        this.data.splice(index + 1, 0, this.smoke[s]);
                                    }
                                    this.data[index].isAddData = true;
                                }
                                this.$refs.childItem[childIndex].className = 'on';
                                this.$refs.childItem[0].className = '';
                                this.$refs.childItem[1].className = '';

                            }
                            // 获取选中结果
                            let arr = [];
                            for (let i = 0; i < this.$refs.childItem.length; i++) {
                                if (this.$refs.childItem[i].className.length > 0) {
                                    arr.push(this.$refs.childItem[i].innerText);
                                }
                            }
                            this.data[index].checkbox = arr;
                            //console.log(this.data[index].checkbox)
                            break;
                        case 2://多选
                            if (liIndex == 0 && this.data[index].isFirst) {//判断多选是否选择“无”选项
                                this.data[index].checkbox = ['无'];
                                this.data[index].isFirst = false;
                            } else {
                                this.data[index].checkbox.forEach((value, i) => {
                                    let firstIndex = this.data[index].checkbox.indexOf('无');
                                    if (firstIndex == i) {
                                        this.data[index].checkbox.splice(firstIndex, 1);//删除多选第一个
                                    }
                                })
                                this.data[index].isFirst = true;
                            }
                            break;
                    }

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
                    //    console.log(this.data[index].checkbox)
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
        }
    });
</script>


<%@ taglib prefix="s" uri="/struts-dojo-tags" %>
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
<link rel="stylesheet" href="css_lib/css/theme-custom.css">
<style>
  .content {
    background-color: #0a455d;
  }

  .main-list {
    position: relative;
  }

  .problemList {
    float: left;
  }

  .subject {
    margin: 1rem 1.5rem;
    color: #fff;
  }

  .subject h3 {
    font-size: 1.5rem;
  }

  .subject p {
    font-size: 1.2rem;
    margin: 0.3rem 0.75rem;
    line-height: 1.2rem;
  }

  .option {
    margin: 0.3rem 0.5757rem;
  }

  .option li {
    margin: 0.3rem 1rem 0.5rem;
    width: 6.8rem;
    position: relative;
    display: inline-flex;
  }

  .option li.on {
    background-color: #44b1c9;
    color: #fff;
    border: 0.1rem solid #44b1c9;
  }

  .option li span {
    width: 6rem;
    text-align: center;
    border-radius: 0.5rem;
    border: 0.1rem solid #fff;
    color: #fff;
    font-size: 1rem;
    padding: 0.3rem;
    display: block;
  }

  .option li .on span {
    background-color: #44b1c9;
    color: #fff;
    border: 0.1rem solid #44b1c9;
  }

  .btn-groups {
    width: 100%;
    height: 3rem;
    bottom: 0;
    left: 0;
    background-color: rgba(162, 201, 216, .8);
  }

  .btn-groups-height {
    height: 2rem;
  }

  .submit {
    display: block;
    float: left;
    background-color: #44b1c9;
    color:#fff;
    width: 6rem;
    font-size: 0.8rem;
    padding: 0.5rem 0;
    text-align: center;
    border-radius: 0.15rem;
    margin: 0.5rem 2rem;
  }

  .submit:active {
    background: rgba(68, 177, 201, .5);
  }

  .btn-groups .prev {
    position: absolute;
    left: 0;
    bottom: 0;
  }

  .btn-groups .next, .btn-groups .save {
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

  /*动画*/
  .slide-enter, .slide_back-enter {
    position: absolute;
    width: 100%;
  }

  .slide-leave, .slide_back-leave {
    position: absolute;
    width: 100%;
  }

  .slide-enter-active, .slide_back-enter-active {
    transition: all 0.3s linear;
  }

  .slide-leave-active {
    position: absolute;
    transition: all 0.3s linear;
    transform: translate(-100%);
  }

  .slide-enter {
    transform: translateX(100%);
  }

  .slide_back-leave-active {
    position: absolute;
    transition: all 0.3s linear;
    transform: translate(100%);
  }

  .slide_back-enter {
    transform: translateX(-100%);
  }
</style>
<jsp:include page="public/header.jsp"/>
<body>

<!-- Scroll-top -->
<button class="scroll-top scroll-to-target" data-target="html">
  <i class="fas fa-angle-up"></i>
</button>

<jsp:include page="public/nav.jsp"/>

<!-- main-area -->
<div>
  <section class="slider-area slider-bg" data-background="css_lib/img/banner/s_slider_bg.jpg">

    <div id="content-page" class="content-page m-auto bg-dark col-lg-10">
      <div class="container-fluid">
        <div class="row">
          <div class="col-sm-12 align-self-center">
            <div class="section-title text-center ">
              <br>
              <h2 class="title">为了给你推荐更好的内容，来做份问卷叭！</h2>
              <br>
              <br>
            </div>
          </div>

          <div class="col-sm-12 bg-dark">
            <div id="app">
              <div class="content">
                <div class="header">
                  <header class="mint-header is-fixed">
                    <center><h1 class="mint-header-title">健康评估量表</h1></center>
                    <div class="mint-header-button f-left">
                      <a href="javascript:history.back(-1)" class="">
                        <button class="mint-button mint-button--default mint-button--normal">
                                                    <span class="mint-button-icon"><i
                                                            class="mintui mintui-back"></i></span>
                          <label class="mint-button-text">返回</label>
                        </button>
                      </a>
                    </div>

                    <div class="mint-header-button f-right">
                      <button class="mint-button mint-button--default mint-button--normal">
                        <label class="mint-button-text">{{dataIndex+1}}/{{data.length}}</label>
                      </button>
                    </div>
                  </header>
                  <div class="mint-header-height"></div>
                </div>
                <div class="main">
                  <form id="form1" runat="server" action="question.action" method="get">
                    <div class="main-list clearfix">
                      <transition-group :name="transitionName">
                        <div class="problemList" v-show="dataIndex === index"
                             v-for="(item, index) in data" :key="index">
                          <div class="subject">
                            <h3>{{index+1}}.{{item.subject.title}}</h3>
                            <p>{{item.subject.describe}}</p>
                          </div>
                          <div class="option">
                            <ul class="clearfix">
                              <!-- 多选 -->
                              <li v-if="item.multiSelect == 2"
                                  v-for="(li, liIndex) in item.subject.option"
                                  :key="liIndex" @click="choiceCheck(index,liIndex)">
                                <input type="checkbox" :value="li"
                                       v-model="item.checkbox"/>
                                <span>{{li}}</span>
                              </li>
                              <!-- 单选 -->
                              <li v-if="item.multiSelect == 0"
                                  v-for="(li, liIndex) in item.subject.option"
                                  :key="liIndex" @click="choiceRadio(index,liIndex)">
                                <input type="radio" :value="li"
                                       v-model="item.checkbox"/>
                                <span>{{li}}</span>
                              </li>
                              <!-- 组合单选 -->
                              <li v-if="item.multiSelect == 1"
                                  v-for="(li, liIndex) in item.subject.option"
                                  :key="liIndex" style="width: 15.6rem;">
                                <div v-for="(liChild, liChildIndex) in li.groups"
                                     :key="liChildIndex"
                                     :style="liChildIndex%2 == 0 ? 'margin-right: 1rem' : 'margin-left: 1rem;'"
                                     style="position: relative;"
                                     @click="choicCompose(index,liIndex,liChildIndex)"
                                     ref="childItem">
                                  <span>{{liChild}}</span>
                                </div>
                              </li>
                            </ul>
                          </div>
                        </div>
                      </transition-group>
                    </div>
                    <div class="btn-groups-height">
                      <div class="btn-groups clearfix">
                        <span v-show="isPrev" class="submit prev" @click="prev">上一题</span>
                        <span v-show="isNext" class="submit next" @click="next">下一题</span>
<%--                        <span v-show="isSubmit" class="submit save" @click="save"> <a href="index.jsp">提交</a> </span>--%>
                        <input type="submit" v-show="isSubmit" class="submit save" value="提交">
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
      data:[
        {
          subject:{
            title: '您的性别是',
            describe: '提供性别信息可以更好的找到喜欢的电影哦~',
            option:['男孩子', '女孩子', '小百合', '是gaygay呢', '是纯洁的小孩子哒', '要和朋友一起看', '不告诉你呢',],//选项
            // male: ['前列腺癌'],
            // female: ['宫颈癌','乳腺癌','卵巢癌','子宫癌'],
          },
          checkbox:[],
          multiSelect: 0,//2为多选、0为单选、1为组合单选
          isSelect: false,//判断是否选中其中一个
          isFirst: true,//判断是否点击多选第一个按钮
          isAddData: false,//判断是否已加载新数据
        },
        {
          subject:{
            title: '您的观影目的',
            describe: '是为什么想看电影，想在什么时候看电影呢（多选）',
            option:['吃饭刷剧时候看看', '无聊会去看', '是个有艺术细胞的人呢', 'emo了','电影伴我入眠','高深莫测的人不应该透露信息',],//选项
            // male: ['前列腺癌'],
            // female: ['宫颈癌','乳腺癌','卵巢癌','子宫癌'],
          },
          checkbox:[],
          multiSelect: 2,//是否是多选
          isSelect: false,//判断是否选中其中一个
          isFirst: true,//判断是否点击多选第一个按钮
          isAddData: false,//判断是否已加载新数据
        },
        {
          subject:{
            title: '观看场景',
            describe: '描述以下现在或者经常看电影的场景（多选）',
            option:['想赖床的早晨', '恰饭的空隙', '懒洋洋的午后', '安静的摸鱼场所','困困的躺在床上','未知的氛围'],//选项
          },
          checkbox:[],
          multiSelect: 2,//是否是多选
          isSelect: false,//判断是否选中其中一个
          isFirst: true,//判断是否点击多选第一个按钮
          isAddData: false,//判断是否已加载新数据
        },
        {
          subject:{
            title: '观影方向',
            describe: '是选喜欢或者想看的电影题材呢（多选）',
            option:['动作', '战争', '科幻', '悬疑','喜剧','爱情','励志','动画','惊悚','犯罪','情色','记录','剧情','想瘫瘫，给我随机叭'],//选项
          },
          checkbox: [],
          multiSelect: 2,//是否是多选
          isSelect: false,//判断是否选中其中一个
          isFirst: true,//判断是否点击多选第一个按钮
          isAddData: false,//判断是否已加载新数据
        },
        //     {
        //         subject:{
        //             title: '饮食习惯',
        //             describe: '您是否存在下列饮食习惯？（多选）',
        //             option:['无', '经常吃宵夜', '不吃或基本不吃早餐', '暴饮暴食','饮食速度过快','饭后立即运动',]//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 2,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '出行方式',
        //             describe: '您日常的出行方式是？（单选）',
        //             option:['很少出行', '自行车', '步行', '乘车或开车', '公交或摩托']//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 0,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '运动情况',
        //             describe: '您平均每周运动锻炼的时间总和是？（单选）',
        //             option:['不锻炼', '小于1小时', '1-3小时', '4-5小时', '大于5小时']//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 0,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '吸烟情况',
        //             describe: '您现在吸烟吗？（组合单选）',
        //             option:[
        //                 {
        //                     groups:['不吸烟','戒烟大于等于7年'],
        //                 },
        //                 {
        //                     groups:['吸烟','戒烟小于7年'],
        //                 },
        //                 {
        //                     groups:['常被动吸烟'],
        //                 }
        //             ],//选项
        //         },
        //         checkbox:[],
        //         multiSelect: 1,//2为多选、0为单选、1为组合单选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '饮酒情况',
        //             describe: '您是否有饮酒的习惯？（单选）',
        //             option:['否', '是',]//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 0,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '睡眠时间',
        //             describe: '您平均每天的睡眠时间是？（单选）',
        //             option:['小于4小时', '4-6小时', '7-8小时', '大于8小时',]//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 0,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '睡眠情况',
        //             describe: '关于睡眠，您是否有下列情况？（多选）',
        //             option:['无', '经常失眠', '服用药物才能入睡', '呼吸暂停综合症',]//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 2,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
        //     {
        //         subject:{
        //             title: '环境调查',
        //             describe: '您工作或生活的环境中，是否存在下列污染？（单选）',
        //             option:['无', '粉尘', '住宅附近工厂水源污染', '甲醛','乙醛','染发剂','室内杀虫剂','放射性物质','油烟污染',]//选项
        //         },
        //         checkbox: [],
        //         multiSelect: 0,//是否是多选
        //         isSelect: false,//判断是否选中其中一个
        //         isFirst: true,//判断是否点击多选第一个按钮
        //         isAddData: false,//判断是否已加载新数据
        //     },
      ],
      // maleDate:[//男性情况
      //     {
      //         subject:{
      //             title: '其他调查',
      //             describe: '您平均每周的性生活频度是？（单选）',
      //             option:['小于3次/周', '大于等于3次/周',]//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      // ],
      // femaleDate:[//女性情况
      //     {
      //         subject:{
      //             title: '生育情况',
      //             describe: '您是否已生育？（单选）',
      //             option:['否', '是',]//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '妊娠调查',
      //             describe: '您初次妊娠的年龄是？（单选）',
      //             option:['小于等于18岁', '大于18岁',]//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '妊娠情况',
      //             describe: '您妊娠的次数是？（单选）',
      //             option:['未生育', '1~2个','3个以上']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '经期调查',
      //             describe: '您近期的月经是否规律？或是否已经绝经？（单选）',
      //             option:['月经周期不规律', '月经周期规律','已绝经','未绝经']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '绝经年龄',
      //             describe: '您最后一次月经的年龄是？（单选）',
      //             option:['31-35岁', '36-40岁','41-45岁','46-50岁','51-55岁','56-60岁','大于等于60岁']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '妇科手术',
      //             describe: '您是否实施过下列妇科手术？（多选）',
      //             option:['无', '宫颈切除','子宫切除','乳腺双侧切除','卵巢双侧切除']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 2,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '服药情况',
      //             describe: '您是否服用雌激素类药物/避孕药？（单选）',
      //             option:['否', '是']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '房事年龄',
      //             describe: '您的初次房事年龄？',
      //             option:['小于等于16岁', '大于16岁']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '生育年龄',
      //             describe: '您生第一胎的年龄？',
      //             option:['小于等于18岁', '大于18岁']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '叶酸摄入',
      //             describe: '您每日服用叶酸剂量？',
      //             option:['大于等于0.4mg', '小于0.4mg']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '怀孕次数',
      //             describe: '您的怀孕次数？',
      //             option:['未怀孕', '1~2次','3次以上']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '其他调查',
      //             describe: '您初次房事的年龄是？（单选）',
      //             option:['小于等于16岁', '大于16岁']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      // ],
      // sports:[//运动
      //     {
      //         subject:{
      //             title: '锻炼强度',
      //             describe: '大部分的锻炼时间中，您是进行的是下列那种强度？（单选）',
      //             option:['极轻度运动', '轻度运动','中度运动','重度运动']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      // ],
      // smoke:[//吸烟
      //     {
      //         subject:{
      //             title: '吸烟习惯',
      //             describe: '您的吸烟习惯中，是否有下列情况？（多选）',
      //             option:['无', '早晨15分钟内吸第一支烟','早晨醒来后一小时比其他时间吸更多烟','在禁烟场所或卧病时很难控制吸烟需求']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 2,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '烟量调查',
      //             describe: '您平均每天要吸多少支香烟？（单选）',
      //             option:['小于5支', '5-15支','16-25支','26-40支','大于40支']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '烟龄调查',
      //             describe: '您的吸烟史有多长时间？（单选）',
      //             option:['小于5年', '5-15年','16-25年','26-40年','大于40年']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      // ],
      // drink:[//饮酒
      //     {
      //         subject:{
      //             title: '饮酒次数',
      //             describe: '您平均每周饮酒的次数是？（单选）',
      //             option:['1-3次', '4-7次','8-14次','大于14次']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      //     {
      //         subject:{
      //             title: '饮酒总量',
      //             describe: '您平均每次的饮酒总量是？（单选）',
      //             option:['小于100ml', '100-400ml','401-800ml','大于800ml']//选项
      //         },
      //         checkbox: [],
      //         multiSelect: 0,//是否是多选
      //         isSelect: false,//判断是否选中其中一个
      //         isFirst: true,//判断是否点击多选第一个按钮
      //     },
      // ],
      dataIndex: 0,//问题索引
      isPrev: false,//上一题是否显示
      isNext: false,//下一题是否显示
      isSubmit: false,//提交是否显示
      sex:'',//判断性别
    },
    mounted(){
      this.sex = '男';//ajax请求返回的数据
      if(this.sex == '女'){
        for(let i=0;i<this.femaleDate.length;i++){
          this.data.push(this.femaleDate[i]);
        }
        this.data.forEach((value, index, arr)=>{
          if(this.data[index].subject.female){
            for(let f=0;f<this.data[index].subject.female.length;f++){
              this.data[index].subject.option.splice(this.data[index].subject.option.length - 1, 0, this.data[index].subject.female[f]);
            }
          }
        })
      }else{
        this.data.push(this.maleDate[0]);
        this.data.forEach((value, index, arr)=>{
          if(this.data[index].subject.male){
            for(let m=0;m<this.data[index].subject.male.length;m++){
              this.data[index].subject.option.splice(this.data[index].subject.option.length - 1, 0, this.data[index].subject.male[m]);
            }
          }
        })
      }
    },
    watch:{
      dataIndex(news, olds){//动画切换
        this.transitionName = news < olds ? 'slide_back' : 'slide';
      }
    },
    methods:{
      choicCompose(index, liIndex, liChildIndex){//组合单选
        this.choice(index, liIndex, 1, liChildIndex);
      },
      choiceRadio(index, liIndex){//单选操作
        this.choice(index, liIndex, 0, null);
      },
      choiceCheck(index, liIndex){//多选操作
        this.choice(index, liIndex, 2, null);
      },
      choice(index, liIndex, choiceStyle, liChildIndex){
        //console.log(liIndex)
        setTimeout(() => {

          switch(choiceStyle){//判断多选、单选、组合单选
            case 0://单选
              let radioTitle = this.data[index].subject.title;
              //运动情况显示是否添加数据
              if(radioTitle == '运动情况' && (this.data[index].checkbox == '小于1小时' || this.data[index].checkbox == '1-3小时' || this.data[index].checkbox == '4-5小时' || this.data[index].checkbox == '大于5小时')){
                if(!this.data[index].isAddData){//添加
                  for(let s=0;s<this.sports.length;s++){
                    this.data.splice(index+1,0,this.sports[s]);
                  }
                  this.data[index].isAddData = true;
                }
              }else if(radioTitle == '运动情况' && (this.data[index].checkbox == '不锻炼')){
                if(this.data[index].isAddData){//删除
                  this.data.splice(index+1,this.sports.length);
                  this.data[index].isAddData = false;
                }
              }
              //饮酒情况
              if(radioTitle == '饮酒情况' && (this.data[index].checkbox == '是')){
                if(!this.data[index].isAddData){//添加
                  for(let s=0;s<this.drink.length;s++){
                    this.data.splice(index+1,0,this.drink[s]);
                  }
                  this.data[index].isAddData = true;
                }
              }else if(radioTitle == '饮酒情况' && (this.data[index].checkbox == '否')){
                if(this.data[index].isAddData){//删除
                  this.data.splice(index+1,this.drink.length);
                  this.data[index].isAddData = false;
                }
              }
              //console.log(this.data);
              break;
            case 1://组合单选
              let childIndex  = liIndex*2 + liChildIndex;
              if(this.$refs.childItem[childIndex].className.length <= 0){
                this.$refs.childItem[childIndex].className = 'on';// 选中添加类
              }else{
                this.$refs.childItem[childIndex].className = '';// 选中再取消
              }
              //判断索引-
              if(childIndex === 0 || childIndex === 1){
                if(this.data[index].isAddData){//删除
                  this.data.splice(index+1,this.smoke.length);
                  this.data[index].isAddData = false;
                }
                this.$refs.childItem[childIndex].className = 'on';
                this.$refs.childItem[2].className = '';
                this.$refs.childItem[3].className = '';

              }else if(childIndex === 2 || childIndex === 3){
                if(!this.data[index].isAddData){//添加
                  for(let s=0;s<this.smoke.length;s++){
                    this.data.splice(index+1,0,this.smoke[s]);
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
                if(this.$refs.childItem[i].className.length > 0){
                  arr.push(this.$refs.childItem[i].innerText);
                }
              }
              this.data[index].checkbox = arr;
              //console.log(this.data[index].checkbox)
              break;
            case 2://多选
              if(liIndex == 0 && this.data[index].isFirst){//判断多选是否选择“无”选项
                this.data[index].checkbox = ['无'];
                this.data[index].isFirst = false;
              }else{
                this.data[index].checkbox.forEach((value, i) => {
                  let firstIndex = this.data[index].checkbox.indexOf('无');
                  if(firstIndex == i){
                    this.data[index].checkbox.splice(firstIndex, 1);//删除多选第一个
                  }
                })
                this.data[index].isFirst = true;
              }
              break;
          }

          if(this.data[index].checkbox.length>0){
            this.isNext = true;
            this.data[index].isSelect = true;
          }else{
            this.isNext = false;
            this.data[index].isSelect = false;
          }

          if(this.dataIndex === (this.data.length - 1)){//判断是否是最后一题，并隐藏下一题按钮
            this.isNext = false;
          }
          //    console.log(this.data[index].checkbox)
        })

      },

      prev(){//上一题
        this.dataIndex -= 1;
        if(this.dataIndex <= 0){
          this.isPrev = false;
        }
        this.isNext = true;
        this.isSubmit = false;
      },
      next(){//下一题
        this.dataIndex += 1;
        if(this.dataIndex > 0){
          this.isPrev = true;
          if(this.data[this.dataIndex].isSelect){
            this.isNext = true;
          }else{
            this.isNext = false;
          }
        }
        if(this.data.length - 1 == this.dataIndex){
          this.isNext = false;
          this.isSubmit = true;
        }
      },
      save(){//保存数据---这是完成按钮
        if(this.data[this.dataIndex].isSelect){
          console.log(this.data);//this.data---需要保存到数据库的数据
        }else{
          alert(this.data[this.dataIndex].subject.describe+'必选');
        }
      },
    }
  });
</script>


<%@ page import="java.util.TreeMap" %>
<%@ page import="java.util.Iterator" %>
<%@ page import="java.util.Map" %>
<%@ page import="java.util.Set" %><%--
  Created by IntelliJ IDEA.
  User: hydrogen_zyx
  Date: 2021/11/7
  Time: 12:25
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="s" uri="/struts-tags" %>
<html>
<head>
    <title>test</title>
    <script type="text/javascript">
        function display_alert() {
            alert("I am an alert box!!")
        }
    </script>
    <script src="css_lib/WordCloudJS/echarts.js"></script>
    <script src="css_lib/WordCloudJS/echarts-wordcloud.min.js"></script>
</head>

<body>

<div id="main" style="width: 800px; height: 600px"></div>
<script>
    onload = function () {
        var data = {
            value: [
                <%

                    TreeMap<String,Integer> cloud = (TreeMap<String, Integer>) request.getAttribute("cloud");
                    Set<String> keys = cloud.keySet();
                    for(String key:keys){
                %>
                {
                    "name": "<%=key%>",
                    "value": <%=cloud.get(key)%>
                },
                <%

                    }
                %>
            ],
            //云朵图片
            image: "data:image/png;base64,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"
        }
        var myChart = echarts.init(document.getElementById('main'));
        //温馨提示：image 选取有严格要求不可过大；，否则firefox不兼容  iconfont上面的图标可以
        var maskImage = new Image();
        maskImage.src = data.image

        maskImage.onload = function () {
            myChart.setOption({
                backgroundColor: '#fff',
                tooltip: {
                    show: false
                },
                series: [{
                    type: 'wordCloud',
                    gridSize: 1,
                    sizeRange: [12, 55],
                    rotationRange: [-45, 0, 45, 90],
                    maskImage: maskImage,
                    textStyle: {
                        normal: {
                            color: function () {
                                return 'rgb(' +
                                    Math.round(Math.random() * 255) +
                                    ', ' + Math.round(Math.random() * 255) +
                                    ', ' + Math.round(Math.random() * 255) + ')'
                            }
                        }
                    },
                    left: 'center',
                    top: 'center',
                    // width: '96%',
                    // height: '100%',
                    right: null,
                    bottom: null,
                    // width: 300,
                    // height: 200,
                    // top: 20,
                    data: data.value
                }]
            })
        }

    }
</script>

</body>
</html>

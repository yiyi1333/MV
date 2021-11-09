<%--
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
</head>
<body>
<table>
    <tr>
        <td>编号</td>
        <td>片名</td>
    </tr>
    <s:iterator value="movies">
        <tr>
            <td><s:property value="movid"/></td>
            <td><s:property value="name"/></td>
        </tr>
    </s:iterator>
</table>
</body>
</html>

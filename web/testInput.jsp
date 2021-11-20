<%@ taglib prefix="s" uri="/struts-tags" %>
<%--
  Created by IntelliJ IDEA.
  User: hydrogen_zyx
  Date: 2021/11/7
  Time: 20:20
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>test</title>
</head>
<body>
<s:form action="getWordCloud">
    <s:textfield name="userid"/>
    <s:submit/>
</s:form>
</body>
</html>

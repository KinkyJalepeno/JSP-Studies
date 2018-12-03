<%--
  Created by IntelliJ IDEA.
  User: Wolfh
  Date: 03/12/2018
  Time: 09:24
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Built in Objects</title>
</head>
<body>

<h3>JSP Built-in Objects</h3>
<br><br>

Request user agent: <%= request.getHeader("User-Agent")%>
<br><br>

Request language: <%= request.getLocale()%>

</body>
</html>

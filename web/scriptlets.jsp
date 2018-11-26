<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Sciptlets in JSP</title>
</head>
<body>

<h3> This is a Scriptlet </h3>
<%
    for (int i = 1; i < 6; i ++){

        out.print("<br>Count to 5: " + i);
    }

%>

</body>
</html>

<%-- Keep these to an absolute minimum, use for light tasks only --%>

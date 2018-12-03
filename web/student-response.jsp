<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Student Response</title>
</head>
<body>

The student is confirmed as: ${param.firstName} ${param.lastName}
<br><br>
<%--The parameters can also be called like the below as the above method can only DISPLAY params --%>
The student is confirmed as: <%= request.getParameter("firstName") %> <%= request.getParameter("lastName")%>
<br><br>

Students country of origin: ${param.country}<br>
Favourite language is: ${param.faveLanguage}<br>
Languages you'd like to learn:<br>

<ul>
    <%
        String[] langs = request.getParameterValues("learnLanguage");

        if(langs != null) {
            for (String temp : langs) {

                out.print("<li>" + temp + "</li>");
            }
        }
    %>
</ul>

</body>
</html>

<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Demo</title>
</head>


<%
    // First read the form data
    String faveLanguage = request.getParameter("faveLanguage");

    //Create a cookie containing favourite language info
    Cookie theCookie = new Cookie("app.faveLanguage", faveLanguage);

    // Set the lifespan of the cookie in total settings
    theCookie.setMaxAge(60*60*24*365);

    // Send cookie to browser
    response.addCookie(theCookie);
%>


<body>

We have set your favourite language to: ${param.faveLanguage}
<br><br>

<a href="cookies-homepage.jsp">Return to homepage</a>


</body>
</html>

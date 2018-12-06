<%--
  Created by IntelliJ IDEA.
  User: Wolfh
  Date: 06/12/2018
  Time: 14:44
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Cookies Homepage</title>
</head>

<!-- Read the favourite programming language cookie-->
<%
    // the default if no cookie exists
    String faveLang = "Java";

    // get the cookies from the browser - request
    Cookie[] theCookies = request.getCookies();

    // find the language cookie in the array
    if (theCookies != null) {

        for (Cookie tempCookie : theCookies) {

            if (tempCookie.getName().equals("app.faveLanguage")) {

                faveLang = tempCookie.getValue();
                break;
            }
        }
    }

%>

<body>

<h3>Training Portal</h3>


<!-- Show a personal page containing cookie info-->
<h4>List of new books covering <%= faveLang %></h4>


<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>


<h4>List of new courses about <%= faveLang %></h4>


<ul>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
    <li>blah blah blah</li>
</ul>
<hr>
<a href="cookies-select-fave-language.html">Personalise this page...</a>


</body>
</html>

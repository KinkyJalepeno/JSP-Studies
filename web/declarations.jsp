<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Declarations in JSP</title>
</head>
<body>

<h3> This is an example of a Declaration in JSP </h3>

<%!
    String makeItLower(String data){

        return data.toLowerCase();
    }
%>

Turn "HELLO WORLD" into lower case: <%= makeItLower("HELLO WORLD")%>



</body>
</html>


<%-- Keep these to an absolute minimum, use for light tasks only --%>
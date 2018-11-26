<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
  <head>
    <title>Expressions in JSP</title>
  </head>
  <body>

    <h3> Expression's in JSP examples </h3>

    The current date and time on this server is <%= new java.util.Date() %>
    <br><br>

    75 is less than 50, true or false? <%= 75 < 50 %>
    <br><br>

40 multiplied by 30 is <%= 40 * 30 %>
<br><br>


  </body>
</html>

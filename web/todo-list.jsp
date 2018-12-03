<%@ page import="java.util.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>To Do List Demo</title>
</head>
<body>
<!-- Create HTML for for entering data -->

<form action="todo-list.jsp">

    Add new item: <input type="text" name="theItem">

    <input type="submit" value="Submit">
    <br><br>

</form>

<!-- Add new item to TO DO list -->
<%
    // get the to-do items from the session
    List<String> items = (List<String>) session.getAttribute("myToDoList");

    // if the to-do items doesn't exist, create new one
    if (items == null){

        items = new ArrayList<>();
        session.setAttribute("myToDoList", items);
    }

    // see if there is form data to add
    String theItem = request.getParameter("theItem");
    if (theItem != null){

        items.add(theItem);
    }
%>

<!-- Step 3: Display all "To Do" items from session -->
<hr>
<b>To Do List Items:</b>
<br>

<ol>
    <%
        for (String temp : items){

            out.print("<li>" + temp + "</li>");
        }
    %>



</ol>


</body>
</html>

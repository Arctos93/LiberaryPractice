<%@ page import="model.Book" %>
<%@ page import="java.util.List" %><%--
  Created by IntelliJ IDEA.
  User: Arek
  Date: 03.10.2020
  Time: 12:38
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
</head>
<body>
<h1></h1>

<% for (Book b : (List<Book>) request.getAttribute("books")) { %>
<%= b.getTitle()%>
<%= b.getPages()%>
<%= b.getAuthor().getFirstName()%>
<%= b.getCategory()%>
<%= b.getIsbn()%>
<%= b.getReleasaDate()%>
<%= b.getSummary()%>
<br>
<%}%>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>

<%--
  Created by IntelliJ IDEA.
  User: Arek
  Date: 04.10.2020
  Time: 12:47
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
<head>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<form action="/ShowBooksDetailServlet" method="get"></form>

BOOKS DETAILS WILL BE HERE - I HOPE SO
<c:out value="${requestScope.book.category}"></c:out>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>

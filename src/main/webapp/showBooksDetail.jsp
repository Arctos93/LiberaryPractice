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

<script src="https://code.jquery.com/jquery-3.4.1.slim.min.js"
        integrity="sha384-J6qa4849blE2+poT4WnyKhv5vZF5SrPo0iEjwBvKU7imGFAV0wwj1yYfoRSJoZ+n"
        crossorigin="anonymous"></script>
<script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"
        integrity="sha384-Q6E9RHvbIyZFJoft+2mJbHaEWldlvI9IOYy5n3zV9zzTtmI3UksdQRVvoxMfooAo"
        crossorigin="anonymous"></script>
<script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"
        integrity="sha384-wfSDF2E50Y2D1uUdj0O3uMBJnjuUD4Ih7YwaYd1iqfktj0Uod8GCExl3Og8ifwB6"
        crossorigin="anonymous"></script>
<head>
</head>
<body>
<jsp:include page="/WEB-INF/fragments/header.jspf"/>

<form action="/ShowBooksDetailServlet" method="get"></form>
<div class="container">

    <div class="card-group">
        <div class="card-body" style="max-width: 18rem;">
            <h5 class="card-title">Title</h5>
            <div class="card border-dark mb-3" style="max-width: 18rem;height: 2rem;">
                <p class="card-text" align="center">
                    <c:out value="${requestScope.book.title}"></c:out>
                </p>
            </div>
        </div>
        <div class="card-body">
            <h5 class="card-title">Author</h5>
            <div class="card border-dark mb-3" style="max-width: 18rem;height: 2rem;">
                <p class="card-text" align="center">
                    <c:out value="${requestScope.book.author.firstName}"></c:out>
                    <c:out value="${requestScope.book.author.lastName}"></c:out>
                </p>
            </div>
        </div>
        <div class="card-body">
            <h5 class="card-title">ISBN</h5>
            <div class="card border-dark mb-3" style="max-width: 18rem;height: 2rem;">
                <p class="card-text" align="center">
                    <c:out value="${requestScope.book.isbn}"></c:out>
                </p>
            </div>
        </div>
        <div class="card-body">
            <h5 class="card-title">Relese Date</h5>
            <div class="card border-dark mb-3" style="max-width: 18rem;height: 2rem;">
                <p class="card-text" align="center">
                    <c:out value="${requestScope.book.releasaDate}"></c:out>
                </p>
            </div>
        </div>
        <div class="card-body">
            <h5 class="card-title">Category</h5>
            <div class="card border-dark mb-3" style="max-width: 18rem;height: 2rem;">
                <p class="card-text" align="center">
                    <c:out value="${requestScope.book.category}"></c:out>
                </p>
            </div>
        </div>
        <div class="card-body">
            <h5 class="card-title">Borrower</h5>
            <div class="card border-dark mb-3" style="max-width: 18rem;height: 2rem;">
                <p class="card-text" align="center">
                    <c:out value="${requestScope.book.borrows}"></c:out>
                </p>
            </div>
        </div>

    </div>
    <div class="card-body" align="center">
        <button class="btn btn-primary" type="button" data-toggle="collapse" data-target="#collapseSummary"
                aria-expanded="false" aria-controls="collapseSummary">
            Summary
        </button>
        </p>
        <div class="collapse" id="collapseSummary">
            <div class="card card-body">
                <c:out value="${requestScope.book.summary}"></c:out>
            </div>
        </div>
    </div>
</div>

</br>
</br>

<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>

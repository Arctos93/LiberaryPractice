<%--
  Created by IntelliJ IDEA.
  User: Arek
  Date: 05.10.2020
  Time: 20:13
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
<div class="container">
    <form action="/EditBookServlet" method="post">
        <div class="form-group">
            <label for="bookTitleId">Boook title</label>
            <input type="text" class="form-control" id="bookTitleId" name="newTitle" value="${requestScope.book.title}">
        </div>
        <div class="form-group">
            <label for="categorySelectId">Category</label>
            <select class="form-control" id="categorySelectId" name="setCategory">
                <c:forEach var="category" items="${requestScope.category}" varStatus="loop">
                    <option>${category}</option>
                </c:forEach>
            </select>
        </div>

        <div class="form-group">
            <label for="authorSelectId">Author</label>
            <select class="form-control" id="authorSelectId" name="authorId">
                <c:forEach var="author" items="${requestScope.authors}" varStatus="loop">
                    <option value="${author.id}">${author.firstName} ${author.lastName}</option>
                </c:forEach>
            </select>
        </div>
        <div class="row">
            <div class="col">
                <label for="isbnId">ISBN</label>
<%--                value - uzupełnia wartością która jest w bazie danych - potem podmienia po zapisaniu --%>
                <input type="text" class="form-control" id="isbnId" name="addIsbn"  value="${requestScope.book.isbn}">
            </div>
            <div class="col">
                <label for="pagesId">Pages</label>
                <input type="number" class="form-control" id="pagesId" name="addPages"  value="${requestScope.book.pages}">
            </div>
        </div>
        <br>
        <div class="form-group">
            <label for="dateId">Boook title</label>
            <input type="date" class="form-control" id="dateId" name="addDate"  value="${requestScope.book.releasaDate}">
        </div>
        <div class="form-group">
            <label for="summaryId">Summary</label>
            <textarea class="form-control"  id="summaryId" name="addSummary" rows="3">
                <c:out value="${requestScope.book.summary}"></c:out>
            </textarea>
        </div>
        <button type="submit" class="btn btn-primary">Edit</button>
        <a href="/HomeServlet">
            <button type="button" class="btn btn-primary">Cancel</button>
        </a>
    </form>
</div>

<%--<div class="container">--%>
<%--    <form action="/EditBookServlet" method="get">--%>
<%--        <c:out value="${requestScope.book.summary}"></c:out>--%>
<%--    </form>--%>
<%--</div>--%>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>

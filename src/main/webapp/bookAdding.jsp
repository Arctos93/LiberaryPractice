<%--
  Created by IntelliJ IDEA.
  User: Arek
  Date: 04.10.2020
  Time: 10:44
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
<form>
    <div class="form-group">
        <label for="bookTitleId">Boook title</label>
        <input type="text" class="form-control" id="bookTitleId" name="newTitle" placeholder="Boook title">
    </div>
    <div class="form-group">
        <label for="categorySelectId">Category</label>
        <select class="form-control" id="categorySelectId" name="setCategory">
        <c:forEach var="category" items="${requestScope.category}" varStatus="loop">
            <option>${category}</option>
        </c:forEach>
        </select>
    </div>
    <div class="row">
        <div class="col">
            <label for="firstNameId">Author First Name </label>
            <input type="text" class="form-control" id="firstNameId" name="authorAddName"  placeholder="Author first name ">
        </div>
        <div class="col">
            <label for="lastNameId">Author First Name</label>
            <input type="text" class="form-control" id="lastNameId" name="authorAddLastName"  placeholder="Author first name">
        </div>
    </div>
    <br>
    <div class="row">
        <div class="col">
            <label for="isbnId">ISBN</label>
            <input type="text" class="form-control" id="isbnId" name="addIsbn" placeholder="ISBN">
        </div>
        <div class="col">
            <label for="pagesId">Pages</label>
            <input type="text" class="form-control" id="pagesId" name="addPages" placeholder="Pages">
        </div>
    </div>
<br>
    <div class="form-group">
        <label for="summaryId">Summary</label>
        <textarea class="form-control" id="exampleFormControlTextarea1" id="summaryId" name="addSummary" rows="3" placeholder="Summary"></textarea>
    </div>

    <a href="/HomeServlet"> <button type="submit" class="btn btn-primary">Add</button></a>
    <a href="/HomeServlet"> <button type="button" class="btn btn-primary">Cancel</button></a>

</form>
</div>
<%@ include file="/WEB-INF/fragments/footer.jspf" %>
</body>
</html>

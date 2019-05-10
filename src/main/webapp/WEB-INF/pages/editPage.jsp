<%--
  Created by IntelliJ IDEA.
  User: Serg
  Date: 08.05.2019
  Time: 17:29
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <c:if test="${empty part.namePart}">
        <title>Добавить новую запчасть</title>
    </c:if>
    <c:if test="${!empty part.namePart}">
        <title>Редактировать запчасть</title>
    </c:if>
</head>
<body>
    <c:if test="${empty part.namePart}">
        <c:url value="/add" var="var"/>
    </c:if>
    <c:if test="${!empty part.namePart}">
        <c:url value="/edit" var="var"/>
    </c:if>
<form action="${var}" method="POST">
    <c:if test="${!empty part.namePart}">
        <input type="hidden" name="id" value="${part.id}">
    </c:if>
    <label for="namePart">Название</label>
    <input type="text" name="namePart" id="namePart">
    <!--    <label for="need">Необходимость</label>-->
    <!--    <input type="text" name="need" id="need">-->
    Необходимость:  <input type="radio" name="need" value="true" checked/>да
                    <input type="radio" name="need" value="false"/>нет
    <label for="count">Количество</label>
    <input type="text" name="count" id="count">
    <c:if test="${empty part.namePart}">
        <input type="submit" value="Добавить новую запчасть">
    </c:if>
    <c:if test="${!empty part.namePart}">
        <input type="submit" value="Редактировать запчасть">
    </c:if>
</form>
</body>
</html>

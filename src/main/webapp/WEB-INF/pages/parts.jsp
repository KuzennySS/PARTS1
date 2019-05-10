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
    <h1>Компьютерные комплектующие</h1>
    <p align="center">
        Страницы:
        <c:forEach begin="1" end="${pagesCount}" step="1" varStatus="i">
            <c:url value="/" var="url">
                <c:param name="page" value="${i.index}"/>
            </c:url>
            <a href="${url}">${i.index}</a>
        </c:forEach>
    </p>
</head>

<body>
<p align="center">
<table>
    <tr>
        <th>№</th>
        <th>Название</th>
        <th>Необходимость</th>
        <th>Количество</th>
        <th>Действия</th>
    </tr>
    <c:forEach var="part" items="${partList}">
        <tr valign=bottom align=center>
            <td>${part.id}</td>
            <td>${part.namePart}</td>
            <%--            <td>${part.need}</td>--%>
            <c:if test="${part.need == true}">
                <td>да</td>
            </c:if>
            <c:if test="${part.need == false}">
                <td>нет</td>
            </c:if>
            <td>${part.count}</td>
            <td>
                <a href="/edit/${part.id}">редактировать</a>
                <a href="/delete/${part.id}">удалить</a>
            </td>
        </tr>
    </c:forEach>
</table>

<br><br>
<table>
    <tr>
        <th>Можно собрать</th>
        <th>${countComputer}</th>
        <th>компьютеров</th>
    </tr>
</table>
</p>

<c:url value="/add" var="add"/>
<h2>
    <a href="${add}">Добавить новую запчасть</a>
</h2>
<%--${part}--%>
<%--<h2><a href="/edit">edit page</a></h2>--%>
<h2>Поиск запчасти</h2>
<form action="/find/${namePart}">
    <input type="text" name="namePart">
    <br><br>
    <input type="submit" value="Искать"/>
</form>

<h2>Сортировать детали по необходимости</h2>
<form action="/sort/${need}">
<!--    <input type="text" name="need">-->
    Необходимость: <input type="radio" name="need" value="true" checked />да
                   <input type="radio" name="need" value="false" />нет
    <br><br>
    <input type="submit" value="Сортировать"/>
</form>
</body>
</html>

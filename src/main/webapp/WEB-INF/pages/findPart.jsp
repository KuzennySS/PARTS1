<%--
  Created by IntelliJ IDEA.
  User: Serg
  Date: 09.05.2019
  Time: 20:28
  To change this template use File | Settings | File Templates.
--%>
<html xmlns:th="http://www.thymeleaf.org">
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<head>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <title>Результаты поиска</title>
</head>
<body>
<c:if test="${!empty findPart.namePart}">
    <table>
        <tr>
            <th>№</th>
            <th>Название</th>
            <th>Необходимость</th>
            <th>Количество</th>
        </tr>
        <tr valign=bottom align=center>
            <td>${findPart.id}</td>
            <td>${findPart.namePart}</td>
<%--            <td>${findPart.need}</td>--%>
            <c:if test="${findPart.need == true}">
                <td>да</td>
            </c:if>
            <c:if test="${findPart.need == false}">
                <td>нет</td>
            </c:if>
            <td>${findPart.count}</td>
        </tr>

    </table>
</c:if>

<c:if test="${empty findPart.namePart}">
    <h2>Очень жаль, запчасть - "<%= request.getParameter("namePart") %>" не найдена! (упс)</h2>
</c:if>

<h2><a href="/">Вернуться на главную страницу</a></h2>
</body>
</html>

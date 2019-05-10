<%--
  Created by IntelliJ IDEA.
  User: Serg
  Date: 09.05.2019
  Time: 23:21
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>

<head>
    <link href="<c:url value="/res/style.css"/>" rel="stylesheet" type="text/css"/>
    <title>Результаты сортировки</title>
</head>
<body>
<table>
    <tr>
        <th>№</th>
        <th>Название</th>
        <th>Необходимость</th>
        <th>Количество</th>
    </tr>
    <c:forEach var="part" items="${sortedParts}">
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
        </tr>
    </c:forEach>
</table>
</body>

<h2><a href="/">Вернуться на главную страницу</a></h2>

</html>

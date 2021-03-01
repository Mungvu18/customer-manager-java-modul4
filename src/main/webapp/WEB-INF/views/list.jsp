<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Title</title>
    <style>
        tr,td{
            border: solid 1px;
            solid-color: cornflowerblue;
        }
    </style>
</head>
<body>
<form action="">
    <table >
        <h1><a href="/customers/create">create</a></h1>
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Email</td>
            <td>Address</td>
        </tr>
        <c:forEach items="${list}" var="c">
            <tr>
                <td>
                    <c:out value="${c.getId()}"/>
                </td>
                <td>
                    <a href="info/${c.getId()}">${c.getName()}</a>
                </td>
                <td>
                    <c:out value="${c.getEmail()}"/>
                </td>
                <td>
                    <c:out value="${c.getAddress()}"/>
                </td>
            </tr>
        </c:forEach>
    </table>
</form>
</body>
</html>

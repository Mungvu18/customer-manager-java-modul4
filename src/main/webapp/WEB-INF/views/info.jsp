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
        <tr>
            <td>Id</td>
            <td>Name</td>
            <td>Email</td>
            <td>Address</td>
        </tr>
            <tr>
                <td>${c.getId()}</td>
                <td>${c.getName()}</td>
                <td>${c.getEmail()}</td>
                <td>${c.getAddress()}</td>
            </tr>
    </table>
</form>
</body>
</html>

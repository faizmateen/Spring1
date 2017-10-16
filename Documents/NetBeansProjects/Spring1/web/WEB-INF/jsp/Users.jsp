<%-- 
    Document   : Users
    Created on : 17 Oct, 2017, 2:38:46 AM
    Author     : faiz
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>USER LIST !!!!!!!</h1>
        <table>
            <tr>
                <th>ID</th>
                <th>Name</th>
            </tr>
            <c:forEach items="${users}" var="user">
                <tr>
                    <td>
                        <c:out value="${user.getId()}"></c:out>
                    </td>
                    <td>
                    <c:out value="${user.getEmpName()}"></c:out>
                    </td>
                </tr>
            </c:forEach>
        </table>
    </body>
</html>

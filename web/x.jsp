<%-- 
    Document   : x
    Created on : Mar 14, 2022, 9:49:04 PM
    Author     : salva
--%>
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <c:if test="${requestScope.emp != null }">
            <table style="border: 3px solid black;">
                <tr>
                    <td>ID</td>
                    <td>NAME</td>
                    <td>ROLE</td>
                </tr>
                <c:forEach  items="${requestScope.emp}" var="x">
                    <tr>
                        <td>${x.id}</td>
                        <td>${x.nombre}</td>
                        <td>${x.role}</td>
                    </tr>
                </c:forEach >
            </table>
        </c:if>
    </body>
</html>

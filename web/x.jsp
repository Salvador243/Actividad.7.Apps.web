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
        <c:if test="${requestScope.lista != null }">
            <table style="border: 3px solid black;">
                <tr>
                    <td>Id</td>
                    <td>Name</td>
                    <td>Apellido</td>
                    <td>Carrera</td>
                    <td>Salon</td>
                </tr>
                <c:forEach  items="${requestScope.lista}" var="x">
                    <tr>
                        <td> 
                            <form action="busqueda" method="get">
                                <button type="submit" name="llave" value="${x.nombre}">busqueda</button>
                            </form>
                        </td>
                        <td>${x.nombre}</td>   
                        <td>${x.apellido}</td>
                        <td>${x.carrera}</td>
                        <td>${x.salon}</td>
                    </tr>
                </c:forEach >
            </table>
            
            <form action="busqueda" method="get">
                <br>
                <label>Ingrese el nombre de la persona que busca:</label> <br>
                <input type="text" name="llave"><br>
                <button type="submit">pedir</button>
            </form>
            
        </c:if>
    </body>
</html>

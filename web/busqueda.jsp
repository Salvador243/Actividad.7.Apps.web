<%-- 
    Document   : busqueda
    Created on : Mar 29, 2022, 8:59:28 PM
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
                    <td>Matricula</td>
                    <td>Calificaicon 1</td>
                    <td>Calificacion 2</td>
                    <td>Calificacion 3</td>
                </tr>
                <%
                    out.println("<form action=\"servlet\" method=\"post\">"+
                                   "<button type=\"submit\" >Ir a actividad</button>"            
                                +"</form>");
                %>
                    <c:forEach  items="${requestScope.lista}" var="x">
                        <c:if test = "${x.matricula == llave}">                     
                        <tr>
                            <td>${x.matricula}</td>   
                            <td>${x.calificacion1}</td>
                            <td>${x.calificacion2}</td>
                            <td>${x.calificacion3}</td>
                        </tr>
                        </c:if>
                    </c:forEach >
            </table>
        </c:if>
    </body>
</html>

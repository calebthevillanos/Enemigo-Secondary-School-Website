<%-- 
    Document   : result
    Created on : Nov 9, 2020, 11:52:52 AM
    Author     : laptop
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <title>RESULT</title>
        <style>
            body{
                padding: 0 5px;
            }
            div.flexthis{
                display: flex;
            }
            div.flexthis div p{
                font-size: 1.1em;
            }
            div#smalldiv{
                margin-left: 5px;
            }
            div.flexthis div{
                margin: 2px 6px;
            }

            h2{
                color: #0099ff;
                font-size: 1.8em;
            }
            .info{
                font-size: 1.2em;
            }
        </style>
    </head>
    <body>
        <h2 >ENEMIGO SECONDARY SCHOOL</h2>
        <div id="smalldiv" class="w3-container">
            <div>
                <p class="info">Name: ${result.student.lastname}, ${result.student.firstname} ${result.student.othername}</p>
                <p class="info">Class: ${resultDetails.resultClass} Term: ${resultDetails.term}</p>
            </div>
            <div class="flexthis">
                <div>
                    <p>SUBJECTS</p>
                    <c:forEach items="${result.subjects}" var="subject">
                        <p>${subject}</p>
                    </c:forEach>
                </div>
                <div>
                    <p>SCORES</p>
                    <c:forEach items="${result.scores}" var="subject">
                        <p>${subject}</p>
                    </c:forEach>
                </div>
            </div>
        </div>
    </body>
</html>

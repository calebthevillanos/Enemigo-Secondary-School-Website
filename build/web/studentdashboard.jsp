<%-- 
    Document   : studentdashboard
    Created on : Mar 27, 2020, 3:09:20 PM
    Author     : laptop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/studentdashbosrdstyle.css" rel="stylesheet" type="text/css"/>
        <title>Student Dashboard | View Your Result</title>
        <style>
            form{
                padding: 5px;
            }
            p{
                color: #0099ff;
                font-size: 30px;
            }

            select{
                display: block;
                border-radius: 4px;
                border: 1px solid #0099ff;
                padding: 5px 10px;
                width: 100%;
                margin: 8px 0;
                box-sizing: border-box;
            }
            form{
                margin-right: 60%;
            }
            input[type=submit]{
                border: 1px  solid;
                border-radius: 5px;
                font-size: 0.89em;
                color: white;
                max-width: 35%;
                padding: 2px 5px;
                background-color: #0099ff;
                margin-top: 15px;
                height: 35px;
                text-align: center;
                cursor: pointer;
            }
        </style>
    </head>
    <body>
        <form action="view-result">
            <div>
                <label for="classes">Choose a Term:</label>
                <select id="classes" name="class">
                    <option selected disabled></option>
                    <c:forEach items="${loggedInStudent.classes}" var="studentclass">
                        <option value="${studentclass}">
                            ${studentclass}
                        </option>
                    </c:forEach>
                </select>
                <br>
                <input type="submit" value="Search for Result">
<!--<div><a href="view-result?result-details=${studentclass}">Search for Result</a></div>-->
            </div>
        </form>
    </body>
</html>

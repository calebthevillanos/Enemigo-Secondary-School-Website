<%-- 
    Document   : studentlogin
    Created on : Mar 27, 2020, 1:52:35 PM
    Author     : laptop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>

        <style>
            div#form-div{
                padding-top: 3px;
                padding-left: 50px;
                padding-right: 50px;
            }
            
            .error{
                color: red;
            }

            div.head{
                background-color: #0099ff;
                color: white;
                width: 100%;
            }
            .btn{
                border: 1px  solid;
                border-radius: 5px;
                font-size: 0.89em;
                color: white;
                max-width: 20%;
                padding: 2px 5px;
                background-color: #0099ff;
                margin-top: 15px;
                height: 35px;
                text-align: center;
                cursor: pointer;
                margin-left: 100px;
            }

            div#form-div form input:not([type=sumbit]){
                display: block;
                border-radius: 4px;
                border: 1px solid #0099ff;
                padding: 5px 10px;
                width: 100%;
                margin: 8px 0;
                box-sizing: border-box;
            }
        </style>
    </head>
    <body>
        <div class="w3-container head">
            <h2>Student Login</h2>
        </div>
        <div id="form-div">
            <c:if test="${loginError eq true}">
                <p class="error">Username and/or password is incorrect</p>
                <c:remove var="loginError" />
            </c:if>

            <form action="student-login" method="post">
                <c:if test="${loginUserNameError eq true}">
                    <p class="error">Username is required</p>
                    <c:remove var="loginUserNameError" />
                </c:if>

                <div class="input-object">
                    <label for="student-username">Username:</label>
                    <input type="text" class="" id="student-username" name="student-username">
                </div>

                <c:if test="${loginPasswordError eq true}">
                    <p class="error">Password is required</p>
                    <c:remove var="loginPasswordError" />
                </c:if>

                <div class="input-object">
                    <label for="student-password">Password:</label>
                    <input type="password" class="" id="student-password" name="student-password" />
                </div>

                <input type="submit" class="btn" value="Login" />
            </form>    
        </div>
    </body>
</html>

<%-- 
    Document   : header
    Created on : Apr 9, 2020, 1:39:29 PM
    Author     : laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <link href="styles/headercss.css" rel="stylesheet" type="text/css"/>
    </head>
    <body>
        <div class="topnav" id="header-div">
            <nav>
                <ul>
                    <li class="logo"><a href="index.jsp">
                            <span class="enemigo">ENEMIGO SECONDARY SCHOOL</span>
                        </a>
                    </li>
                    <li id="about-link"><a class="" href="aboutus.jsp">About Us</a></li>
                    <li id="admission-link"><a class="" href="admissions.jsp">Admissions</a></li>
                    <li id="admin-login-link"><a class="" href="adminlogin.jsp">Login Admin</a></li>
                    <li id="student-login-link"><a class="" href="studentlogin.jsp">Login Student </a></li>
                    <li class="menu-bar">
                        <button id="menu-button" onclick="displayMenuBar()"><i class="fas fa-bars"></i></button>
                    </li>
                </ul>

            </nav>
        </div>

        <script>
            function displayMenuBar() {
                var x = document.getElementById("header-div");
                if (x.className === "topnav") {
                    x.className += " responsive";
                } else {
                    x.className = "topnav";
                }
            }
        </script>
    </body>
</html>

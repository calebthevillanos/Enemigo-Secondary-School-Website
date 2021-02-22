<%-- 
    Document   : footer
    Created on : Apr 10, 2020, 2:51:11 PM
    Author     : laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <link href="fontawesome/css/all.min.css" rel="stylesheet" type="text/css"/>
        <title>JSP Page</title>
        <style>
            footer {
                margin-top: 10px;
                padding: 10px 5%;
                background-color: #008bc4e3;
                display: flex;
                font-size: 1em;
            }

            footer #footer-container{
                display: flex;
                margin: 10px;
                max-width: 100%;
            }

            div#social, div#links{
                margin-left: 150px;
            }
            div#social ul{
                list-style-type: none;
                display: flex;
                padding: 0;
            }
            
            div#social ul li{
                flex: 1  1 1%;
            }
            footer i{
                margin-right: 9px;
            }
            div#links ul li{
                color: white;
            }
            div#social i{
                color: white;
            }
            div.footer-objects h4, div.footer-objects p, div.footer-objects i{
                color: white;
            }
        </style>
    </head>

    <body>
        <footer>
            <div id="footer-container">
                <div class="footer-objects">
                    <h4>CONTACT INFO</h4>
                    <div class="">
                        <p><i class="fa fa-map-marker"></i>Address: Villanos Avenue, Univine, Port Harcourt</p>
                        <p><i class="fa fa-phone"></i>Mobile: +234807664532</p>
                        <p><i class="fa fa-envelope"></i>Email: 148nemy@gmail.com</p>
                    </div>
                </div>

                <div class="footer-objects">
                    <div id="social">
                        <h4>FOLLOW US</h4>
                        <ul>
                            <li>
                                <a href="https://www.facebook.com/caleb.austine33" target="_blank">
                                    <i class="fab fa-facebook"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.instagram.com/kayy.leb" target="_blank">
                                    <i class="fab fa-instagram"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://twitter.com/beautifulenemy" target="_blank">
                                    <i class="fab fa-twitter"></i>
                                </a>
                            </li>
                            <li>
                                <a href="https://www.youtube.com/channel/UCgtP3h7SmQsvw6PoqhnjI-Q" target="_blank">
                                    <i class="fab fa-google-plus"></i>
                                </a>
                            </li>
                        </ul>
                    </div>
                </div>
            </div>
            <div class="footer-objects">                        
                <div id="links">
                    <h4>IMPORTANT LINKS</h4>
                    <ul>
                        <li>
                            <a href="admissions.jsp" target="_blank">
                                Information About Admission
                            </a>
                        </li>
                        <li>
                            <a href="aboutus.jsp" target="_blank">
                                History of Enemigo Secondary School(E.S.S)
                            </a>
                        </li>
                        <li>
                            <a href="adminlogin.jsp" target="_blank">
                                Admin Login
                            </a>
                        </li>
                        <li>
                            <a href="studentlogin.jsp" target="_blank">
                                Student Login
                            </a>
                        </li>
                        
                    </ul>
                </div>
            </div>
        </footer>
    </body>
</html>

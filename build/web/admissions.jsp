<%-- 
    Document   : admissions
    Created on : Nov 15, 2020, 2:42:01 PM
    Author     : laptop
--%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Admissions To E.S.S</title>
        <style>
            *{
                font-family: Trebuchet MS, Helvetica, sans-serif;
            }
            /*div contact*/
            div#contact-form{
                width: 50%;
                padding: 0 20px;
                margin-top: 20px;
            }

            div#contact-form form label{
                font-family: 'Lato', sans-serif;
                font-size: 0.89em;
                color: #008bc4e3;
                padding: 2px 40px;
            }

            div#contact-form form input:not([type=sumbit]),
            div#contact-form form textarea{
                display: block;
                margin: 0 auto;
                width: 70%;
                border-radius: 4px;
                border: 1px solid #008bc4e3;
                padding: 5px 10px;
            }

            div#contact-form form textarea{
                height: 60px;
            }

            div#contact-form form input[type=submit]{
                font-size: 0.89em;
                color: #008bc4e3;
                width: 40%;
                padding: 2px 5px;
                border: 1px solid #008bc4e3;
                border-radius: 5px;
                background-color: transparent;
                margin-top: 15px;
                height: 35px;
                text-align: center;
                cursor: pointer;
            }

            div#contact-form form input[type=submit]:hover{
                background-color: #008bc4e3;
                color: white;
            }

            span.validate{
                color: rgb(225, 5, 2);
                font-size: 12px;
                display: none;
                margin: 0 40px;
                line-height: 0;
                word-spacing: 0;
            }
            div.flex{
                display: flex;
            }
            img{
                object-fit: cover;
            }
            div#header-divv{
                position: relative;
            }
            div#header-divv h2{
                position: absolute;
                color: white;
                margin-left: 500px;
                margin-top: 20px;
                font-size: 3em;

            }
        </style>
    </head>
    <body>
        <c:import url="header.jsp" />
        <div id="header-divv">
            <h2>ADMISSIONS</h2>
            <img src="imgs/book.JPG" alt="" style="width:100%; height: 100px;"/>
        </div>
        <div class="flex"> 
            <div id="info">
                <p>We know that choosing a new school can be tough and challenging, but our staff are here to guide you.Please do not hesitate – 
                    contact us if you require clarification on any aspect of the admission process.</p>

                <p>The major intake points are as follows:</p>

                Junior Secondary School: JSS1 (Basic 7)<br>

                Senior Secondary School: SSS1 (Basic 10)<br>

                <p>However, students may also be admitted to all classes after a comprehensive assessment. 
                    We would conduct tests for new / intending students. Their performance would help us determine the class into which they should be admitted.</p>

                <p class="redpara">Applicants must be at least 10 years of age to be eligible for admission.</p>

                The procedure is as follows:<br>
                Obtain application forms and prospectus from the school’s administrative office. Application forms are obtainable at the cost of  
                Five Thousand Naira only (N5,000).<br>
                Fill and return forms with all necessary documents<br>
                A highly competitive entrance examination is taken.<br>
                An interview is conducted for successful candidates and their parents.<br>
                A letter of offer of admission is given and upon fulfillment of all conditions, admission is confirmed.<br>
            </div>
            <div id="contact-form">
                <h4>For further inquiries, call: 08161669474, 08035553501 or 07062686412 OR SEND US A MAIL</h4>
                <form action="mailto:iykeaustyn@gmail.com" method="post" onsubmit="validateForm()">
                    <label for="name">Name</label>
                    <input id="name" type="text" name="name" placeholder="Your Name">
                    <span id="validate-name" class="validate"></span><br>
                    <label for="email">Email</label>
                    <input id="email-address" type="email" name="email" placeholder="Your email">
                    <span id="validate-email" class="validate"></span><br>
                    <label for="request">Inquiry</label>
                    <textarea id="request" name="request" style="resize: none;" placeholder="What will you like to know"></textarea>
                    <span id="validate-message" class="validate"></span>
                    <input type="submit" value="SEND">
                </form>
            </div>
        </div>
        <c:import url="footer.jsp" />

        <script>
            function validateForm() {
                const nameField = document.querySelector("#name");
                const emailAddressField = document.querySelector("#email-address");
                const messageField = document.querySelector("#request");

                let namePattern = /[A-z]+/;

                if (nameField.value === "" || !namePattern.test(nameField.value))
                {
                    event.preventDefault()
                    let span = document.querySelector("#validate-name");
                    span.textContent = "Please, input a valid name";
                    span.style.display = "inline";
                } else
                    document.querySelector("#validate-name").style.display = "none";

                if (emailAddressField.value === "")
                {
                    event.preventDefault();
                    let span = document.querySelector("#validate-email");
                    span.textContent = "Please, input a valid email address";
                    span.style.display = "inline";
                } else
                    document.querySelector("#validate-email").style.display = "none";

                if (messageField.value === "")
                {
                    event.preventDefault();
                    let span = document.querySelector("#validate-message");
                    span.textContent = "Please, say something";
                    span.style.display = "inline";
                } else
                    document.querySelector("#validate-message").style.display = "none";
            }
        </script>
    </body>
</html>

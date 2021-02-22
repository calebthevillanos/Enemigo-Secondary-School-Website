<%-- 
    Document   : chooseresultcriteria
    Created on : Nov 9, 2020, 2:55:56 PM
    Author     : laptop
--%>

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Input Result Details</title>

        <style>
            form{
                padding: 5px;
            }
            p{
                color: #0099ff;
            }
            div{
                padding-bottom: 9px;
            }
            p{
                font-size: 20px;
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
        <div>
            <p>SELECT RESULT DETAILS</p>
        </div>
        <div>
            <form action="input-result-details">
                <div>
                    <label for="classes">Choose a Class:</label>
                    <select id="classes" name="class" required>
                        <option selected disabled></option>
                        <option value="JSS1">
                            JSS1
                        </option>
                        <option value="JSS2">
                            JSS2
                        </option>
                        <option value="JSS3">
                            JSS3
                        </option>
                        <option value="SSS1">
                            SSS1
                        </option>
                        <option value="SSS2">
                            SSS2
                        </option>
                        <option value="SSS3">
                            SSS3
                        </option>
                    </select></div>
                <div>
                    <label for="terms">Choose a Term:</label>
                    <select id="terms" name="term" required>
                        <option selected disabled></option>
                        <option value="First Term">
                            First Term
                        </option>
                        <option value="Second Term">
                            Second Term
                        </option>
                        <option value="Third Term">
                            Third Term
                        </option>
                    </select>
                </div>
                <div>
                    <label id="armslabel" for="arms" style="display: none;">Choose a Class Arm:</label>
                    <select id="arms" name="arm" style="display: none;">
                        <option selected disabled></option>
                        <option value="Arts">
                            Arts
                        </option>
                        <option value="Science">
                            Science
                        </option>
                    </select><br>
                    <div>

                        <input type="submit" value="SUBMIT">

                        </form>
                    </div>

                    <script>
                        document.querySelector('#classes').addEventListener("change", function () {
                            if (this.value === "JSS1") {
                                document.getElementById("arms").style.display = "none";
                                document.getElementById("arms").value = "";
                                document.getElementById("armslabel").style.display = "none";
                            }
                            if (this.value === "JSS2") {
                                document.getElementById("arms").style.display = "none";
                                document.getElementById("armslabel").style.display = "none";
                            }
                            if (this.value === "JSS3") {
                                document.getElementById("arms").style.display = "none";
                                document.getElementById("armslabel").style.display = "none";
                            }
                            if (this.value === "SSS1") {
                                document.getElementById("arms").style.display = "inline";
                                document.getElementById("armslabel").style.display = "inline";
                            }
                            if (this.value === "SSS2") {
                                document.getElementById("arms").style.display = "inline";
                                document.getElementById("armslabel").style.display = "inline";
                            }
                            if (this.value === "SSS3") {
                                document.getElementById("arms").style.display = "inline";
                                document.getElementById("armslabel").style.display = "inline";
                            }
                        });

                    </script>
                    </body>
                    </html>

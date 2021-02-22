<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <title>Add New Student</title>
        <style>
            .form-div{
                margin-left: 70px;
                margin-right: 70px;
                padding: 5px;
            }

            form{
                padding: 40px;
                margin-top: 10px;
            }

            input, label{
                margin: 15px 0;
            }

            .validation-message{
                font-size: small;
                color: red;
                float: right;
                display: none;
            }
            div#header-div{
                background-color: #0099ff;
                color: white;
            }
        </style>
    </head>
    <body>
        <div class="w3-container" id="header-div" style="text-align: center;">
            <h2>New Student Form</h2>
        </div>

        <c:if test="${addError eq true}">
            <p class="error">Please fill all fields correctly</p>
            <c:remove var="addError" />
        </c:if>

        <c:if test="${studentExistError eq true}">
            <p class="error">This student is already registered</p>
            <c:remove var="studentExistError" />
        </c:if>

        <c:if test="${addError eq false}">
            <p class="success">You have successfully added a new student</p>
            <c:remove var="addError" />
        </c:if>

        <div class="form-div">
            <form action="add-student" class="w3-light-grey" method="post" enctype="multipart/form-data">
                <div class="first-name-field">
                    <label for="new-firstname">First name:</label>
                    <span class="validation-message">First name is required</span>
                    <input type="text" class="w3-input w3-border w3-round" id="new-firstname" name="new-firstname">
                </div>

                <div class="other-name-field">
                    <label for="new-othername">Other name:</label>
                    <span class="validation-message">Other name is required</span>
                    <input type="text" class="w3-input w3-border w3-round" id="new-othername" name="new-othername">
                </div>

                <div class="last-name-field">
                    <label for="new-lastname">Last name:</label>
                    <span class="validation-message">Last name is required</span>
                    <input type="text" class="w3-input w3-border w3-round" id="new-lastname" name="new-lastname">
                </div>

                <div class="gender-field">
                    <label id="gender-label">Gender:</label>
                    <span class="validation-message">Gender is required</span>

                    <input type="radio" class="" id="male-gender" name="new-gender" value="male"/>
                    <label for="male-gender">Male</label>

                    <input type="radio" class="" id="female-gender" name="new-gender" value="female"/>
                    <label for="female-gender">Female</label>
                </div>

                <div>
                    <label for="new-dateofbirth">Date Of Birth:</label>
                    <input type="date" class="w3-input w3-border w3-round" id="new-dateofbirth" name="new-dateofbirth" required>
                </div>

                <div class="phone-number-field">
                    <label for="new-phone">Guardian Phone:</label>
                    <span class="validation-message">Phone number is required</span>
                    <input type="tel" class="w3-input w3-border w3-round" id="new-phone" name="new-phone">
                </div>

                <div class="email-address-field">
                    <label for="new-email">Guardian Email:</label>
                    <span class="validation-message">Email address is required</span>
                    <input type="email" class="w3-input w3-border w3-round" id="new-email" name="new-email">
                </div>

                <div class="address-field">
                    <label for="new-address">Address:</label>
                    <span class="validation-message"></span>
                    <input type="text" class="w3-input w3-border w3-round" id="new-address" name="new-address" >
                </div>

                <div>
                    <label>
                        Select the picture of the student: 
                    </label>
                    <input type="file" class=""  name="picture"
                           accept="image/jpeg, image/png, image/gif" required/>
                </div>

                <div>
                    <input type="submit" value="ADD NEW STUDENT">
                </div>
            </form>
        </div>
    </body>
</html>

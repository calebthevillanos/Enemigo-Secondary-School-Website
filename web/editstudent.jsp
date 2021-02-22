<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <title>Edit Student</title>
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
            input[type=submit]{
                border-radius: 7px;
            }
        </style>
    </head>
    <body>
        <div class="w3-container" id="header-div" style="text-align: center;">
            <h2>Edit Student</h2>
        </div>
        <div id="form-div">
            <form action="update-student" class="w3-light-grey" method="post">
                <div>
                    <input type="hidden" name="studentid" value="${student.id}" disabled ></div>
                <div>
                    <label for="new-firstname">First name:</label>
                    <input type="text" class="w3-input w3-border w3-round" id="new-firstname" name="edit-firstname" value="${student.firstname}">
                </div>
                <div>
                    <label for="new-othername">Other name:</label>
                    <input type="text" class="w3-input w3-border w3-round" id="new-othername" name="edit-othername" value="${student.othername}">
                </div>
                <div>
                    <label for="new-lastname">Last name:</label>
                    <input type="text" class="w3-input w3-border w3-round" id="new-lastname" name="edit-lastname" value="${student.lastname}">
                </div>
                <div  class="gender-field">
                    <label id="gender-label">Gender</label>
                    <!--<span class="validation-message">invalid input</span>-->

                    <input type="radio" id="male-gender" name="edit-gender" value="male" ${student.gender == 'Male' ? 'checked' : ''}/>
                    <label for="male-gender">Male</label>

                    <input type="radio" id="female-gender" name="edit-gender" value="female" ${student.gender == 'Female' ? 'checked' : ''} />
                    <label for="female-gender">Female</label>
                </div>
                <div>
                    <label for="new-dateofbirth">Date Of Birth:</label>
                    <input type="text" name="old-dateofbirth" value="${student.dateofbirthString}" disabled/>
                    <input type="date" class="w3-input w3-border w3-round" id="new-dateofbirth" name="edit-dateofbirth" required/>

                </div>
                <div>
                    <label for="new-phone">Guardian Phone:</label>
                    <input type="tel" class="w3-input w3-border w3-round" id="new-phone" name="edit-phone" value="${student.guardianPhone}">
                </div>
                <div>
                    <label for="new-email">Guardian Email:</label>
                    <input type="email" class="w3-input w3-border w3-round" id="new-email" name="edit-email" value="${student.guardianEmail}">
                </div>
                <div>
                    <label for="new-address">Address:</label>
                    <input type="text" class="w3-input w3-border w3-round" id="new-address" name="edit-address" value="${student.address}">
                </div>
                <input type="submit" value="SAVE AND CONTINUE">

            </form>
        </div>
    </body>
</html>

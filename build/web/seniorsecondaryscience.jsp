<%-- 
    Document   : seniorsecondaryscience
    Created on : Nov 11, 2020, 7:47:42 AM
    Author     : laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Senior Secondary School Science Arm Result Form</title>
        <style>
            form{
                padding: 5px;
            }
            p{
                color: #0099ff;
                font-size: 30px;
            }

            input{
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
        <p>INPUT SCORES</p>
        <form action="submit-result-details">
            Mathematics: <input type="text" name="Mathematics" required><br>
            English Language: <input type="text" name="English" required><br>
            Biology: <input type="text" name="Biology" required><br>
            Physics: <input type="text" name="Physics" required><br>
            CRK: <input type="text" name="CRK" required><br>
            Computer Studies: <input type="text" name="COmputerStudies" required><br>
            Economics: <input type="text" name="Economics" required><br>
            Agricultural Science: <input type="text" name="AgriculturalScience" required><br>
            Further Mathematics: <input type="text" name="FurtherMathematics" required><br>

            <input type="submit" value="SUBMIT">

        </form>
    </body>
</html>

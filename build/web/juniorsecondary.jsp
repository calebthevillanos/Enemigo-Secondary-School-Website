<%-- 
    Document   : juniorsecondary
    Created on : Nov 11, 2020, 7:47:19 AM
    Author     : laptop
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Junior Secondary School Result Form</title>
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
            Basic Science: <input type="text" name="BasicScience" required><br>
            Literature: <input type="text" name="Literature" required><br>
            Agricultural Science: <input type="text" name="AgricScience" required><br>
            Basic Technology: <input type="text" name="BasicTechnology" required><br>
            Computer Studies: <input type="text" name="ComputerStudies" required><br>
            Business Studies: <input type="text" name="BusinessStudies" required><br>
            Home Economics: <input type="text" name="HomeEconomics" required><br>
            Social Studies: <input type="text" name="SocialStudies" required><br>
            Fine Arts: <input type="text" name="Finearts" required><br>

            <input type="submit" value="SUBMIT">

        </form>
    </body>
</html>

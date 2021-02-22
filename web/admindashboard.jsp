<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <link href="styles/w3.css" rel="stylesheet" type="text/css"/>
        <title>Admin Dashboard</title>

        <style>
            h3{
                font-size: 40px;
                text-align: center; 
                color: #0099ff;
            }
            .table-div{
                margin-left: 20px;
                margin-right: 20px;
            }
            .btnlike{
                background-color: #0099ff;
                text-align: center;
                border-radius:8px;
                margin-top: 5px;
                margin-bottom: 20px;
                cursor: pointer;
                color: white;
                text-decoration: none;
                text-align: center;
                padding: 1px 10px;
                text-align: center;	
                text-decoration: none;
                display: inline-block;
            }

            div.student-img{
                padding: 5px;
            }
            #student-image{
                width: 100px;
            }
            td {
                height: 50px;
                vertical-align: middle;
            }
            tr{
                text-align: center;
                vertical-align: middle;


            }   
            a#addnewbtn{
                background-color: #0099ff;
                text-align: center;
                border-radius:8px;
                margin-top: 5px;
                margin-bottom: 20px;
                margin-left: 500px;
                cursor: pointer;
                color: white;
                text-decoration: none;
                padding: 14px 25px;
                text-align: center;	
                text-decoration: none;
                display: inline-block;
            }
        </style>
    </head>
    <body class="w3-container">
        <div>
            <h3>ENEMIGO SECONDARY SCHOOL STUDENTS</h3>
        </div>
        <div class="w3-responsive table-div">
            <div >
                <a id="addnewbtn" href="addnewstudent.jsp">ADD NEW STUDENT</a>
            </div>
            <table>
                <tr>
                    <th>IMAGE</th>
                    <th>NAME</th>
                    <th>GENDER</th>
                    <th>DOB</th>
                    <th>ADDRESS</th>
                    <th>USERNAME</th>
                    <th>PASSWORD</th>
                    <th></th>
                    <th></th>
                </tr>
                <c:forEach items="${students}" var="student">
                    <tr>
                        <td>
                            <div class="student-img"><img id="student-image" src="images/${student.imageName}" alt="${student.firstname}" /></div>
                        </td>
                        <td>
                            <div class="">${student.firstname} ${student.othername} ${student.lastname}</div>
                        </td>
                        <td>
                            ${student.gender}
                        </td>
                        <td>
                            <fmt:formatDate type="date" value="${student.dateofbirth2}" pattern="EEEE MMMM dd, yyyy"/>
                        </td>
                        <td>
                            ${student.address}
                        </td>
                        <td>
                            ${student.username}
                        </td>
                        <td>
                            ${student.password}
                        </td>
                        <td><div style=""><a class="btnlike" href="edit-student?student=${student.id}">EDIT</a></div></td>
                        <td><div style=""><a class="btnlike" href="input-result-criteria?studentid=${student.id}">INPUT RESULT</a></div></td>
                    </tr>
                </c:forEach>
            </table>
        </div>
    </body>
</html>

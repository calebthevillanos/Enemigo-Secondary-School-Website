package enemigoweb.servlet;

import enemigoweb.bean.Result;
import enemigoweb.bean.Student;
import enemigoweb.dao.ResultDAO;
import enemigoweb.dao.StudentDAO;
import java.io.File;
import java.io.IOException;
import java.io.InputStream;
import java.nio.file.FileAlreadyExistsException;
import java.nio.file.Files;
import java.sql.Connection;
import java.sql.SQLException;
import java.time.LocalDate;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Map;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.annotation.MultipartConfig;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.http.Part;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet(name = "AdminServlet", urlPatterns =
{
    "/add-student", "/students", "/edit-student", "/update-student", "/input-result-criteria", "/input-result-details", "/submit-result-details"
})

@MultipartConfig

public class AdminServlet extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException
    {
        doPost(req, resp);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String servletPath = request.getServletPath();
        HttpSession session = request.getSession();

        if (servletPath.equals("/students"))
        {
            try
            {
                ArrayList<Student> students = StudentDAO.getStudents(getConnection());
                session.setAttribute("students", students);
            } catch (SQLException e)
            {
                System.err.println("an exception occurred: " + e);
//                session.setAttribute("dbError", true);
            }
            response.sendRedirect("admindashboard.jsp");
        } else if (servletPath.equals("/edit-student"))
        {
            int studentId = Integer.parseInt(request.getParameter("student"));

            try
            {
                Student student = StudentDAO.getStudent(getConnection(), studentId);
                session.setAttribute("student", student);
                response.sendRedirect("editstudent.jsp");
            } catch (SQLException e)
            {
                System.err.println("ex: " + e);
                session.setAttribute("dbError", true);
            }
        } else if (servletPath.equals("/add-student"))
        {
            String firstname = request.getParameter("new-firstname");
            String othername = request.getParameter("new-othername");
            String lastname = request.getParameter("new-lastname");
            String gender = request.getParameter("new-gender");
            String date = request.getParameter("new-dateofbirth");
            String guardianPhone = request.getParameter("new-phone");
            String guardianEmail = request.getParameter("new-email");
            String address = request.getParameter("new-address");
            String imageName = firstname + othername + lastname;

            int year = Integer.parseInt(date.substring(0, 4));
            int month = Integer.parseInt(date.substring(5, 7));
            int day = Integer.parseInt(date.substring(8, 10));

            Part picturePart = request.getPart("picture");

            String newFileName = renameFile(imageName, picturePart.getSubmittedFileName());

            Student student = new Student(firstname, othername, lastname, gender, LocalDate.of(year, month, day),
                    guardianPhone, guardianEmail, address, newFileName);

            if (validateForm(session, student))
            {
                try
                {
                    int returned = StudentDAO.addStudent(getConnection(), student);
                    if (returned == 1)
                    {

                        //image/jpeg audio/mpeg video/pgg application/pdf text/html
                        //image/png image/gif
                        if (picturePart.getContentType().startsWith("image"))//Note:get content type returns the min type
                        {
                            final File pictureFolder = new File(
                                    "C:/Users/laptop/Pictures/enemigo_web_app/images");
                            //create folder if folder doesn't exists
                            if (!pictureFolder.exists())
                            {
                                pictureFolder.mkdir();
                            }

                            File uploadFile = new File(
                                    pictureFolder, newFileName);

                            boolean fileUploaded = false;

                            try (InputStream input = picturePart.getInputStream())
                            {
                                Files.copy(input, uploadFile.toPath());
                                fileUploaded = true;
                            } catch (FileAlreadyExistsException ex)
                            {
//                    responseMessages.put("nameError", "Your picture have already being uploaded");
//                    request.setAttribute("responseMessages", responseMessages);
//                    request.getRequestDispatcher("index.jsp").forward(request, response);
                            }
                            System.out.println("addedddd");
                            session.setAttribute("addError", false);
                            response.sendRedirect("updatedsuccessfully.jsp");
                        }
                    } else if (returned == -1)
                    {
                        session.setAttribute("studentExistError", true);
                        System.out.println("exist");
                        response.sendRedirect("addnewstudent.jsp");
                    } else
                    {
                        session.setAttribute("addError", true);
                        response.sendRedirect("addnewstudent.jsp");
                    }

                } catch (SQLException e)
                {
                    System.err.println("exception occured" + e);
                    session.setAttribute("dbError", true);
                }
            }
        } else if (servletPath.equals("/update-student"))
        {
            String firstname = request.getParameter("edit-firstname");
            String othername = request.getParameter("edit-othername");
            String lastname = request.getParameter("edit-lastname");
            String gender = request.getParameter("edit-gender");
            if (gender.equalsIgnoreCase("male"))
            {
                gender = "Male";
            } else
            {
                gender = "Female";
            }
            String date = request.getParameter("edit-dateofbirth");
            String guardianPhone = request.getParameter("edit-phone");
            String guardianEmail = request.getParameter("edit-email");
            String address = request.getParameter("edit-address");

            int year = Integer.parseInt(date.substring(0, 4));
            int month = Integer.parseInt(date.substring(5, 7));
            int day = Integer.parseInt(date.substring(8, 10));

            Student editStudent = new Student();
            editStudent.setFirstname(firstname);
            editStudent.setOthername(othername);
            editStudent.setLastname(lastname);
            editStudent.setGender(gender);
            editStudent.setDateofbirth(LocalDate.of(year, month, day));
            editStudent.setGuardianPhone(guardianPhone);
            editStudent.setGuardianEmail(guardianEmail);
            editStudent.setAddress(address);

            Student edtStudent = (Student) session.getAttribute("student");
            editStudent.setId(edtStudent.getId());

            if (validateForm(session, editStudent))
            {
                try
                {
                    int returned = StudentDAO.editStudent(getConnection(), editStudent);
                    if (returned == 1)
                    {
                        System.out.println("edittteddd");
                        response.sendRedirect("updatedsuccessfully.jsp");
                    }

                } catch (SQLException e)
                {
                    System.err.println("exception occured" + e);
//                            session.setAttribute("dbError", true);
                }
            }
        } else if (servletPath.equals("/input-result-criteria"))
        {
            int studentId = Integer.parseInt(request.getParameter("studentid"));

            try
            {
                Student student = StudentDAO.getStudent(getConnection(), studentId);
                session.setAttribute("setStudent", student);
                response.sendRedirect("chooseresultcriteria.jsp");
            } catch (SQLException e)
            {
                System.err.println("ex: " + e);
                session.setAttribute("dbError", true);
            }
        } else if (servletPath.equals("/input-result-details"))
        {
            String resultClass = request.getParameter("class");
            String term = request.getParameter("term");
            String arm = request.getParameter("arm");
            Student studentDetails = (Student) session.getAttribute("setStudent");

            Result result = new Result();
            try
            {
                result.setStudent(StudentDAO.getStudent(getConnection(), studentDetails.getId()));
                result.setResultClass(resultClass);
                result.setTerm(term);

                session.setAttribute("resultDetails", result);
            } catch (SQLException ex)
            {
                System.err.println("exception occured" + ex);
            }

            if (resultClass.charAt(0) == 'S' && arm.equals("Arts"))
            {
                response.sendRedirect("seniorsecondaryarts.jsp");
            } else
            {
                if (resultClass.charAt(0) == 'S' && arm.equals("Science"))
                {
                    response.sendRedirect("seniorsecondaryscience.jsp");

                } else
                {
                    if (resultClass.charAt(0) == 'J' && arm == null)
                    {
                        response.sendRedirect("juniorsecondary.jsp");
                    }
                }
            }
        } else if (servletPath.equals("/submit-result-details"))
        {
            System.out.println("submit-result-details");
            Result result = (Result) session.getAttribute("resultDetails");

            Map<String, String[]> parameters = request.getParameterMap();

            for (String key : parameters.keySet())
            {
                result.addSubject(key);
                result.addScore(Integer.parseInt(parameters.get(key)[0]));
            }
            try
            {
                int returned = ResultDAO.addResult(getConnection(), result);
                if (returned >= 1)
                {
                    System.out.println("upload successfully");
                    response.sendRedirect("updatedsuccessfully.jsp");
                }
            } catch (SQLException ex)
            {
                System.out.println(ex);
            }

        }
    }

    private String renameFile(String username, String submittedFileName)
    {
        int lastDotIndex = submittedFileName.lastIndexOf(".");
        int startingIndex = lastDotIndex + 1;

        String newFileName = username;

        return newFileName + "." + submittedFileName.substring(startingIndex);//substring is use to extract part of a string
    }

    private Connection getConnection() throws SQLException
    {
        DataSource ds = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        return ds.getConnection();

    }

    private boolean validateForm(HttpSession session, Student student)
    {
        boolean valid = true;

        if (student.getFirstname().equals("") || !student.getFirstname().matches("^[A-Z][a-z\\.\\-]+"))
        {
            session.setAttribute("addFirstNameError", true);
            session.setAttribute("addError", true);
            valid = false;
        }

        if (student.getOthername().equals("") || !student.getOthername().matches("^[A-Z][a-z\\.\\-]+"))
        {
            session.setAttribute("addOtherNameError", true);
            session.setAttribute("addError", true);
            valid = false;
        }

        if (student.getLastname().equals("") || !student.getLastname().matches("^[A-Z][a-z\\.\\-]+"))
        {
            session.setAttribute("addLastNameError", true);
            session.setAttribute("addError", true);
            valid = false;
        }

        if (student.getGender() == null)
        {
            session.setAttribute("addGenderError", true);
            session.setAttribute("addError", true);
            valid = false;
        } else
        {
            if (student.getGender().equalsIgnoreCase("male"))
            {
                student.setGender("Male");
            } else
            {
                student.setGender("Female");
            }
        }

        if (student.getGuardianEmail().equals("") || !student.getGuardianEmail().matches("([a-z]+|\\d|[\\._-])+@[a-z]+\\.(org|com|net|edu)"))
        {
            session.setAttribute("addEmailError", true);
            session.setAttribute("addError", true);
            valid = false;
        }

        if (student.getGuardianPhone().isEmpty() || !student.getGuardianPhone().matches("0([79]0|8[01])\\d{8}"))
        {
            session.setAttribute("addPhoneError", true);
            session.setAttribute("addError", true);
            valid = false;
        }
        return valid;
    }
}

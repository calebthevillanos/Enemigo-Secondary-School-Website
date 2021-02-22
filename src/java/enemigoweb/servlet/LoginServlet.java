package enemigoweb.servlet;

import enemigoweb.bean.Student;
import enemigoweb.bean.Admin;
import enemigoweb.dao.AdminDAO;
import enemigoweb.dao.StudentDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet(name = "LoginServlet", urlPatterns =
{
    "/admin-login", "/student-login"
})
public class LoginServlet extends HttpServlet
{

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String servletPath = request.getServletPath();

        if (servletPath.equals("/admin-login"))
        {
            String username = request.getParameter("admin-username");
            String password = request.getParameter("admin-password");

            Admin admin = new Admin(username, password);

            HttpSession session = request.getSession();
            //1. Validate form parameters
            if (validateLogin(session, admin))
            {
                try
                {
                    AdminDAO.verifyAdmin(getConnection(), admin);
                    if (admin.isVerified())
                    {
                        System.out.println("verified");
                        session.setAttribute("loggedInAdmin", admin);
                        response.sendRedirect("students");
                    } else
                    {
                        session.setAttribute("loginError", true);
                        response.sendRedirect("adminlogin.jsp");
                    }
                } catch (SQLException e)
                {
                    System.err.println("exception occured" + e);
                    session.setAttribute("dbError", true);
                    response.sendRedirect("adminlogin.jsp");
                }
            } else
            {
                response.sendRedirect("adminlogin.jsp");
            }
        } else
        {
            if (servletPath.equals("/student-login"))
            {
                String username = request.getParameter("student-username");
                String password = request.getParameter("student-password");

                Student student = new Student(username, password);

                HttpSession session = request.getSession();
                //1. Validate form parameters
                if (validateLogin(session, student))
                {
                    try
                    {
//                        StudentDAO.verifyStudent(getConnection(), student);
                        if (StudentDAO.verifyStudent(getConnection(), student) == true)
                        {
                            System.out.println("verified");
                            student.setClasses(StudentDAO.getClasses(getConnection(), student.getId()));
                            
                            session.setAttribute("loggedInStudent", student);
                            response.sendRedirect("studentdashboard.jsp");
                        } else
                        {
                            session.setAttribute("loginError", true);
                            response.sendRedirect("studentlogin.jsp");
                        }
                    } catch (SQLException e)
                    {
                        System.err.println("exception occured" + e);
                        session.setAttribute("dbError", true);
                        response.sendRedirect("studentlogin.jsp");
                    }
                } else
                {
                    response.sendRedirect("studentlogin.jsp");
                }
            }
        }
    }

    private boolean validateLogin(HttpSession session, Admin admin)
    {
        boolean valid = true;

        if (admin.getUsername().equals(""))
        {
            session.setAttribute("loginUserNameError", true);
            valid = false;
        }
        if (admin.getPassword().equals(""))
        {
            session.setAttribute("loginPasswordError", true);
            valid = false;
        }
        return valid;
    }

    private boolean validateLogin(HttpSession session, Student student)
    {
        boolean valid = true;

        if (student.getUsername().equals(""))
        {
            session.setAttribute("loginUserNameError", true);
            valid = false;
        }
        if (student.getPassword().isEmpty())
        {
            session.setAttribute("loginPasswordError", true);
            valid = false;
        }
        return valid;
    }

    private Connection getConnection() throws SQLException
    {
        DataSource ds = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        return ds.getConnection();

    }
}

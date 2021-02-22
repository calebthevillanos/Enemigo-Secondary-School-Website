package enemigoweb.servlet;

import enemigoweb.bean.Result;
import enemigoweb.bean.Student;
import enemigoweb.dao.ResultDAO;
import java.io.IOException;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.ArrayList;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import org.apache.tomcat.jdbc.pool.DataSource;

@WebServlet(name = "StudentServlet", urlPatterns =
{
    "/view-result"
})
public class StudentServlet extends HttpServlet
{

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {
        String servletPath = request.getServletPath();
        HttpSession session = request.getSession();

        Student loggedInStudent = (Student) session.getAttribute("loggedInStudent");


        if (servletPath.equals("/view-result"))
        {
            System.out.println(loggedInStudent.getId());
            String resultdetails = request.getParameter("class");
            System.out.println(resultdetails);
            
            
            String resultClass = resultdetails.substring(0, 4);
            String resultTerm = resultdetails.substring(5);
            
            System.out.println(resultClass);
            System.out.println(resultTerm);
            try
            {
                Result result = ResultDAO.getResult(getConnection(), loggedInStudent.getId(), resultClass, resultTerm);
                //System.out.println(result.getSubjects());
                session.setAttribute("result", result);
                
            } catch (SQLException e)
            {
                System.err.println("an exception occurred: " + e);
//                session.setAttribute("dbError", true);
            }
            response.sendRedirect("result.jsp");
        }
    }

    private Connection getConnection() throws SQLException
    {
        DataSource ds = (DataSource) getServletContext().getAttribute("DATA_SOURCE");
        return ds.getConnection();

    }

}

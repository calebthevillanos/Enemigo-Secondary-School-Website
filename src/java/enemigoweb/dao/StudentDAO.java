package enemigoweb.dao;

import enemigoweb.bean.Result;
import enemigoweb.bean.Student;
import java.sql.Connection;
import java.sql.Date;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class StudentDAO
{

    private static boolean getStudent(Connection con, String firstName, String otherName, String lastName) throws SQLException
    {
        final String QUERY = "SELECT * FROM Students"
                + " WHERE FirstName = ? AND OtherName = ? AND LastName = ?";
        try (PreparedStatement statement = con.prepareStatement(QUERY))
        {
            statement.setString(1, firstName);
            statement.setString(2, otherName);
            statement.setString(3, lastName);

            try (ResultSet resultSet = statement.executeQuery())
            {
                if (resultSet.next())
                {
                    return true;
                }
            }
        }
        return false;
    }

    public static int addStudent(Connection connection, Student newStudent) throws SQLException
    {
        int rowAdded;

        boolean studentFound;

        try
        {
            studentFound = getStudent(connection, newStudent.getFirstname(), newStudent.getOthername(), newStudent.getLastname());
        } catch (SQLException e)
        {
            System.err.println("Could not verify student before insertion: "
                    + e.getMessage());
            return 0;
        }

        if (studentFound)
        {
            return -1;
        }

        final String QUERY = "INSERT INTO students(firstname, othername, lastname, gender, dateofbirth, guardian_phone, "
                + "guardian_email, address, image, username, password) VALUES(?, ?, ?, ?, ?, ?, ?, ?, ?, ?, ?)";
        try (PreparedStatement ps = connection.prepareStatement(QUERY))
        {
            ps.setString(1, newStudent.getFirstname());
            ps.setString(2, newStudent.getOthername());
            ps.setString(3, newStudent.getLastname());
            ps.setString(4, newStudent.getGender());
            ps.setDate(5, Date.valueOf(newStudent.getDateofbirth()));
            ps.setString(6, newStudent.getGuardianPhone());
            ps.setString(7, newStudent.getGuardianEmail());
            ps.setString(8, newStudent.getAddress());
            ps.setString(9, newStudent.getImageName());
            ps.setString(10, "USER0" + System.currentTimeMillis());
            ps.setString(11, "newstudent");

            rowAdded = ps.executeUpdate();
        }
        return rowAdded;
    }

    public static ArrayList<Student> getStudents(Connection connection) throws SQLException
    {
        final String QUERY = "SELECT * FROM students";

        try (Statement statement = connection.createStatement();
                ResultSet resultSet = statement.executeQuery(QUERY))
        {
            ArrayList<Student> students = new ArrayList<>();
            while (resultSet.next())
            {
                students.add(new Student(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5),
                        resultSet.getDate(6).toLocalDate(), resultSet.getString(7), resultSet.getString(8), resultSet.getString(9), resultSet.getString(10),
                        resultSet.getString(11), resultSet.getString(12))
                );
            }
            return students;
        } finally
        {
            connection.close();
        }
    }

    public static boolean verifyStudent(Connection connection, Student student) throws SQLException
    {
        final String QUERY = "SELECT * FROM students WHERE username = ? AND password = ?";
        try (PreparedStatement ps = connection.prepareStatement(QUERY))
        {
            ps.setString(1, student.getUsername());
            ps.setString(2, student.getPassword());

            try (ResultSet resultSet = ps.executeQuery())
            {
                if (resultSet.next())
                {
                    student.setId(resultSet.getInt(1));

                    return true;
                }
            }
        } finally
        {
            connection.close();
        }
        return false;
    }

    public static int editStudent(Connection connection, Student student) throws SQLException
    {
        int rowUpdated = 0;

        final String QUERY = "UPDATE students SET firstname = ?, othername = ?,"
                + "lastname = ?, gender = ?, dateofbirth = ?,"
                + "guardian_phone = ?, guardian_email = ?, address = ?"
                + "WHERE id = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY))
        {
            statement.setString(1, student.getFirstname());
            statement.setString(2, student.getOthername());
            statement.setString(3, student.getLastname());
            statement.setString(4, student.getGender());
            statement.setDate(5, Date.valueOf(student.getDateofbirth()));
            statement.setString(6, student.getGuardianPhone());
            statement.setString(7, student.getGuardianEmail());
            statement.setString(8, student.getAddress());
            statement.setInt(9, student.getId());

            rowUpdated = statement.executeUpdate();
        }
        return rowUpdated;
    }

    public static Student getStudent(Connection connection, int id)
    {
        Student student = null;

        final String QUERY = "SELECT * FROM students WHERE id = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY))
        {
            statement.setInt(1, id);
            try (ResultSet resultSet = statement.executeQuery())
            {
                if (resultSet.next())
                {
                    student = new Student(resultSet.getInt(1), resultSet.getString(2), resultSet.getString(3), resultSet.getString(4), resultSet.getString(5),
                            resultSet.getDate(6).toLocalDate(), resultSet.getString(7), resultSet.getString(8), resultSet.getString(9), resultSet.getString(10),
                            resultSet.getString(11), resultSet.getString(12));
                }
            }
        } catch (SQLException e)
        {
            System.err.println("Could not retrieve student details: "
                    + e.getMessage());
        }
        return student;
    }

    public static ArrayList<String> getClasses(Connection connection, int studentId) throws SQLException
    {
        final String QUERY = "SELECT id, class, term from results where student_id = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY))
        {
            statement.setInt(1, studentId);

            try (ResultSet resultSet = statement.executeQuery())
            {
                ArrayList<String> classes = new ArrayList<>();
                while (resultSet.next())
                {
                    String grade = resultSet.getString("class");
                    String term = resultSet.getString("term");
                    classes.add(grade+" "+term);
                }
                return classes;

            } finally
            {
                connection.close();
            }
        }

    }
}

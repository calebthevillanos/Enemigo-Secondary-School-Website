package enemigoweb.dao;

import enemigoweb.bean.Result;
import enemigoweb.bean.Student;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.util.ArrayList;

public class ResultDAO
{

    public static Result getResult(Connection connection, int studentId, String resultClass, String term) throws SQLException
    {
        final String QUERY = "SELECT r.id, rd.subject, rd.score from results r join result_details "
                + "rd on r.id = rd.result_id where r.student_id = ? and r.class = ? and r.term = ?";

        try (PreparedStatement statement = connection.prepareStatement(QUERY))
        {
            statement.setInt(1, studentId);
            statement.setString(2, resultClass);
            statement.setString(3, term);
            {

                try (ResultSet resultSet = statement.executeQuery())
                {
                    Result result = null;

                    if (resultSet.next())
                    {
                        result = new Result();

                        result.setStudent(StudentDAO.getStudent(connection, studentId));
                        result.setId(resultSet.getInt(1));
                        result.addSubject(resultSet.getString("subject"));
                        result.addScore(resultSet.getInt("score"));
                    }
                    while (resultSet.next())
                    {
                        result.addSubject(resultSet.getString("subject"));
                        result.addScore(resultSet.getInt("score"));
                    }
                    return result;
                } finally
                {
                    connection.close();
                }
            }
        }

    }

    private static boolean getRes(Connection con, int studentid, String resultClass, String resultTerm) throws SQLException
    {
        final String QUERY = "SELECT * FROM Results"
                + " WHERE student_id = ? AND class = ? AND term = ?";
        try (PreparedStatement statement = con.prepareStatement(QUERY))
        {
            statement.setInt(1, studentid);
            statement.setString(2, resultClass);
            statement.setString(3, resultTerm);

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

    public static int addResult(Connection connection, Result result) throws SQLException
    {
        boolean resultFound;

//        try
//        {
        resultFound = getRes(connection, result.getStudent().getId(), result.getResultClass(), result.getTerm());
//        }
//        catch (SQLException e)
//        {
//            System.err.println("Could not verify result details before insertion: "
//                    + e.getMessage());
//            return 0;
//        }

        if (resultFound)
        {
            System.err.println("Can not create duplicate result details:");
            return -1;
        } else
        {
            final String QUERY = "INSERT INTO results(student_id, class, term) VALUES(?, ?, ?)";

            try (PreparedStatement ps = connection.prepareStatement(QUERY))
            {
                ps.setInt(1, result.getStudent().getId());
                ps.setString(2, result.getResultClass());
                ps.setString(3, result.getTerm());

                ps.executeUpdate();

                try (ResultSet resultSet = ps.executeQuery("SELECT LAST_INSERT_ID();"))
                {
                    if (resultSet.next())
                    {
                        result.setId(resultSet.getInt(1));
                    }
                }
                
                final String QUERY2 = "INSERT INTO result_details(result_id, subject, score) VALUES(?, ?, ?)";

                connection.setAutoCommit(false);
                try (PreparedStatement pstmt = connection.prepareStatement(QUERY2))
                {
                    for (int i = 0; i < result.getSubjects().size(); i++)
                    {
                        pstmt.setInt(1, result.getId());
                        pstmt.setString(2, result.getSubjects().get(i));
                        pstmt.setInt(3, result.getScores().get(i));

                        pstmt.addBatch();
                    }
                    pstmt.executeBatch();
                    connection.commit();
                    
                    return 1;
                }

            }
        }
    }
}

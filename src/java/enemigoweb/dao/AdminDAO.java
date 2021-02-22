package enemigoweb.dao;

import enemigoweb.bean.Admin;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;



public class AdminDAO
{
    public static void verifyAdmin(Connection connection, Admin admin) throws SQLException
    {

        final String QUERY = "SELECT * FROM admins WHERE username = ? AND password = ?";
        try (PreparedStatement ps = connection.prepareStatement(QUERY))
        {
            ps.setString(1, admin.getUsername());
            ps.setString(2, admin.getPassword());

            try (ResultSet rs = ps.executeQuery())
            {
                if (rs.next())
                {
                    admin.setVerified(true);
                }
            }
        } finally
        {
            connection.close();
        }
    }
}

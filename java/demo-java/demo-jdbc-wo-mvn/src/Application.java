import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class Application {
    public static final String DB_URL = "jdbc:mariadb://localhost:3306/epsi-b3";
    public static final String DB_USER = "root";
    public static final String DB_PWD = "root";


    public static void main(String[] args) {

        Connection connection = null;

        try {
            connection = DriverManager.getConnection(DB_URL,DB_USER,DB_PWD);
            System.out.println(connection);
        } catch (SQLException e){
            System.out.println(e.getMessage());
        } finally {
            try {
                connection.close();
            } catch (SQLException e) {
                throw new RuntimeException(e);
            }
        }

        try(Connection cnx = DriverManager.getConnection(DB_URL ,DB_USER, DB_PWD)){
            System.out.println(cnx);
        } catch (SQLException e){
            System.out.println(e.getMessage());
        }
    }
}
package cars;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.io.*;
import java.sql.*;

@WebServlet("/View")
public class View extends HttpServlet {

    // JDBC configurations for H2 database
    private static final String URL = "jdbc:h2:~/test";
    private static final String USER = "sa";
    private static final String PASSWORD = "";

    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        // Database connection and query
        try (Connection connection = DriverManager.getConnection(URL, USER, PASSWORD)) {
            Statement statement = connection.createStatement();
            String query = "SELECT * FROM CUSTOMER_DETAILS";
            ResultSet resultSet = statement.executeQuery(query);

            int index = 1; // Index for sequentially naming attributes
            
            // Iterate over each row in the result set and set each customer detail as request attributes
            while (resultSet.next()) {
                request.setAttribute("customer" + index + "_id", resultSet.getInt("id"));
                request.setAttribute("customer" + index + "_name", resultSet.getString("name"));
                request.setAttribute("customer" + index + "_phone", resultSet.getString("phone"));
                request.setAttribute("customer" + index + "_car", resultSet.getString("car"));
                request.setAttribute("customer" + index + "_delivery_date", resultSet.getDate("delivery_date"));
                request.setAttribute("customer" + index + "_amount", resultSet.getDouble("amount"));
                
                index++; // Increment to set a unique name for each customer attribute
            }
        } catch (SQLException e) {
            e.printStackTrace(); // Log the exception
            request.setAttribute("errorMessage", "Error fetching data from the database");
        }

        // Forward the request to JSP for displaying the data
        request.getRequestDispatcher("viewData.jsp").forward(request, response);
    }
}

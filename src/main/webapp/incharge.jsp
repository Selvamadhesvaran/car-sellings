<%@ page import="java.sql.*" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<html>
<head>
    <title>Incharge Data</title>
    <style>
        /* Apply a gradient background */
        body {
            font-family: Arial, sans-serif;
            background: linear-gradient(to right, #2c3e50, #4ca1af);
            color: white;
            text-align: center;
            margin: 0;
            padding: 0;
        }

        h2 {
            margin-top: 30px;
            font-size: 28px;
            text-shadow: 2px 2px 4px rgba(0, 0, 0, 0.3);
        }

        table {
            width: 80%;
            margin: 20px auto;
            border-collapse: collapse;
            background: rgba(255, 255, 255, 0.1);
            border-radius: 10px;
            overflow: hidden;
            backdrop-filter: blur(10px);
            color: white;
            font-size: 18px;
        }

        th, td {
            padding: 15px;
            border-bottom: 1px solid rgba(255, 255, 255, 0.3);
            text-align: center;
        }

        th {
            background: rgba(0, 0, 0, 0.3);
            font-size: 20px;
        }

        tr:hover {
            background: rgba(255, 255, 255, 0.2);
            transition: 0.3s;
        }

        /* Add a glow effect */
        th, td {
            box-shadow: 0px 0px 5px rgba(255, 255, 255, 0.2);
        }

    </style>
</head>
<body>
    <h2>Incharge Details</h2>

    <table>
        <thead>
            <tr>
                <th>ID</th>
                <th>Name</th>
                <th>Phone</th>
                <th>Car</th>
                <th>Delivery Date</th>
                <th>Amount</th>
            </tr>
        </thead>
        <tbody>
            <%
                Connection conn = null;
                Statement stmt = null;
                ResultSet rs = null;
                try {
                    // Load H2 JDBC Driver
                    Class.forName("org.h2.Driver");

                    // Connect to H2 Database (Replace with your database path)
                    conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", ""); 

                    // Execute SQL Query
                    stmt = conn.createStatement();
                    rs = stmt.executeQuery("SELECT * FROM customer_details");

                    // Loop through the result set
                    while(rs.next()) {
            %>
                        <tr>
                            <td><%= rs.getInt("id") %></td>
                            <td><%= rs.getString("Name") %></td>
                            <td><%= rs.getString("phone") %></td>
                            <td><%= rs.getString("Car") %></td>
                            <td><%= rs.getDate("Delivery_Date") %></td>
                            <td><%= rs.getDouble("Amount") %></td>
                        </tr>
            <%
                    }
                } catch (Exception e) {
                    e.printStackTrace();
                } finally {
                    if (rs != null) rs.close();
                    if (stmt != null) stmt.close();
                    if (conn != null) conn.close();
                }
            %>
        </tbody>
    </table>
</body>
</html>

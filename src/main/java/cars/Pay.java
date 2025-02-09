package cars;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/Pay")
public class Pay extends HttpServlet {
    private static final long serialVersionUID = 1L;
    
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        PrintWriter out = response.getWriter();
        
        String name = request.getParameter("name");
        String phone = request.getParameter("phone");
        String car = request.getParameter("car");
        String date = request.getParameter("date");
        String amount = request.getParameter("amount");
        
        Connection conn = null;
        PreparedStatement pstmt = null;
        
        try {
            Class.forName("org.h2.Driver");
            conn = DriverManager.getConnection("jdbc:h2:~/test", "sa", "");
            
            String sql = "INSERT INTO CUSTOMER_DETAILS (name, phone, car, delivery_date, amount) VALUES (?, ?, ?, ?, ?)";
            pstmt = conn.prepareStatement(sql);
            pstmt.setString(1, name);
            pstmt.setString(2, phone);
            pstmt.setString(3, car);
            pstmt.setString(4, date);
            pstmt.setString(5, amount);
            
            int rowsInserted = pstmt.executeUpdate();
            
            out.println("<html><head>");
            out.println("<style>");
            out.println("body { font-family: Arial, sans-serif; text-align: center; padding: 50px; background-color: #f4f4f4; }");
            out.println(".container { width: 50%; margin: auto; padding: 20px; background: white; border-radius: 10px; box-shadow: 2px 2px 10px #aaa; }");
            out.println("h3 { color: green; }");
            out.println(".error { color: red; }");
            out.println("</style>");
            out.println("</head><body>");
            out.println("<div class='container'>");
            
            if (rowsInserted > 0) {
                out.println("<h3>Payment Successful! Customer details have been saved.</h3>");
            } else {
                out.println("<h3 class='error'>Error in processing payment.</h3>");
            }
           
            
        } catch (Exception e) {
            e.printStackTrace();
            out.println("<h3 class='error'>Error: " + e.getMessage() + "</h3>");
        } finally {
            try {
                if (pstmt != null) pstmt.close();
                if (conn != null) conn.close();
            } catch (Exception e) {
                e.printStackTrace();
            }
        }
    }
}

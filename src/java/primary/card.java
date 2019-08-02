package primary;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Christian Lay
 */
public class card {
    public static String getCard(HttpServletRequest request, HttpServletResponse response) throws IOException, Exception {
        try (PrintWriter out = response.getWriter()) {
            
            String query = request.getParameter("pkid");
           
            Connection myConnection;
            myConnection = DriverManager.getConnection("jdbc:derby://localhost:1527/CodeSubmissionDB");
            Statement myStatement = myConnection.createStatement(); 
            ResultSet myResults = myStatement.executeQuery(
                    "SELECT * FROM APP.PLANET WHERE PKID=" + query);
            
            while (myResults.next()) {
                out.println(
                    "<div>"
                    + "<div class='card' style='width:18rem; left:1rem;'>"
                    + "<img src='" +myResults.getString("IMAGELINK")+"' class='card-img-top' alt='"+myResults.getString("NAME")+"'>"
                    + "<div class='card-body'>"
                    + "<h5 class='card-title'>" +myResults.getString("NAME")+"</h5>"
                    + "<footer><small>From <a href='https://images.nasa.gov' target='_blank'>images.nasa.gov</a></small></footer>"
                    + "</div>"
                    + "</div>");                       
                    String myJumbo;
                    myJumbo = new jumbotron().getJumbotron(request, response);
                    out.println(myJumbo);
                    out.println("</div>");
            }
            myResults.close();           
            myConnection.close();
            
            } 
        catch (SQLException e) {
            }
        return "nothing";
    }
}


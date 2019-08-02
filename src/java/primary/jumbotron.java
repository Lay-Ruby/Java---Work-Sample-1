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
public class jumbotron {
    
    public static String getJumbotron(HttpServletRequest request, HttpServletResponse response) throws IOException, Exception {
        try (PrintWriter out = response.getWriter()) {
            
            String query = request.getParameter("pkid");
            
            Connection myConnection;
            myConnection = DriverManager.getConnection("jdbc:derby://localhost:1527/CodeSubmissionDB");
            Statement myStatement = myConnection.createStatement(); 
            ResultSet myResults = myStatement.executeQuery(
                    "SELECT * FROM APP.PLANET WHERE PKID=" + query);
            while (myResults.next()) {
                
                String apiUrl = "api.jsp?altName=" +myResults.getString("ALTNAME")+ "&imageLink=" +myResults.getString("IMAGELINK")+"";
                
                out.println("<div style='float:right; width:65%; left:20rem; top:5rem; position:absolute'>");
                out.println("<div class='jumbotron'>");
                out.println("<h1 class='display-4'>" +myResults.getString("NAME")+"</h1>");
                out.println("<hr class='my-4'>");
                out.println("<p class='card-text'>" +myResults.getString("NAME")+" is the ");
                switch (query) {
                    case "1":
                        out.println("first");
                        break;
                    case "2":
                        out.println("second");
                        break;
                    case "3":
                        out.println("third");
                        break;
                    case "4":
                        out.println("fourth");
                        break;
                    case "5":
                        out.println("fifth");
                        break;
                    case "6":
                        out.println("sixth");
                        break;
                    case "7":
                        out.println("seventh");
                        break;
                    case "8":
                        out.println("eigth");
                        break;           
                }
                out.println(" planet in the solar system. It has a diameter of " +myResults.getInt("DIAMETERKILOMETERS") +" kilometers and it is " +myResults.getDouble("SOLARDISTANCEAU") +" AU from the sun. The length of a day on " +myResults.getString("NAME") +" is "+myResults.getInt("DAYLENGTHHOURS") +" hours and it takes " +myResults.getInt("SOLARORBITEARTHMONTHS") +" months to orbit the sun.</p>");
                out.println("<p class='card-text'><small class='text-muted'><a href='" +apiUrl +"'>Get more data about " +myResults.getString("NAME") +" from The Solar System OpenData API.</a></small></p>");
                out.println("</div>");
                out.println("</div>");               
                }

            myResults.close();           
            myConnection.close();
            
            } 
        catch (SQLException e) {
//            out.println("Exception: "+e.getMessage());
            }

        return "nothing";
    }
}

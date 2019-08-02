package primary;

import java.io.IOException;
import java.io.PrintWriter;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author Christian Lay
 */
public class pageServlet extends HttpServlet {

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException, Exception {
        response.setContentType("text/html;charset=UTF-8");
        try (PrintWriter out = response.getWriter()) {
            
            String query = request.getParameter("pkid");
            
            out.println("<!DOCTYPE html>");
            out.println("<html>");
            out.println("<head>");
            switch (query) {
                case "1":
                    out.println("<title>The Planets | Mercury</title>");
                    break;
                case "2":
                    out.println("<title>The Planets | Venus</title>");
                    break;
                case "3":
                    out.println("<title>The Planets | Earth</title>");
                    break;
                case "4":
                    out.println("<title>The Planets | Mars</title>");
                    break;
                case "5":
                    out.println("<title>The Planets | Jupiter</title>");
                    break;
                case "6":
                    out.println("<title>The Planets | Saturn</title>");
                    break;
                case "7":
                    out.println("<title>The Planets | Uranus</title>");
                    break;
                case "8":
                    out.println("<title>The Planets | Neptune</title>");
                    break;
                default:
                    break;
            }
            out.println("<meta name='viewport' content='width=device-width, initial-scale=1, shrink-to-fit=no'>");
            out.println("<style>");
            out.println("body {");
            out.println("background-image: url('https://images-assets.nasa.gov/image/PIA12348/PIA12348~orig.jpg'); background-size: cover;");
            out.println("}");
            out.println("</style>");
            out.println("<link rel='stylesheet' href='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css' crossorigin='anonymous'>");
            out.println("</head>");
            out.println("<body>");
            out.println("<nav class='navbar navbar-expand-lg navbar-light bg-light'>");
            out.println("<a class='navbar-brand' href='#'>ORNL Code Sample</a>");
            out.println("<button class='navbar-toggler' type='button' data-toggle='collapse' data-target='#navbarNav' aria-controls='navbarNav' aria-expanded='false' aria-label='Toggle navigation'>");
            out.println("<span class='navbar-toggler-icon'></span>");
            out.println("</button>");
            out.println("<div class='collapse navbar-collapse' id='navbarNav'>");
            out.println("<ul class='navbar-nav'>");
            out.println("<li class='nav-item'>");
            out.println("<a class='nav-link' href='index.jsp'>Home</a>");
            out.println("</li>");
            if (query.equals("1")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=1'>Mercury</a>");
            out.println("</li>");
            if (query.equals("2")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=2'>Venus</a>");
            out.println("</li>");
            if (query.equals("3")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=3'>Earth</a>");
            out.println("</li>");
            if (query.equals("4")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=4'>Mars</a>");
            out.println("</li>");
            if (query.equals("5")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=5'>Jupiter</a>");
            out.println("</li>");
            if (query.equals("6")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=6'>Saturn</a>");
            out.println("</li>");
            if (query.equals("7")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=7'>Uranus</a>");
            out.println("</li>");
            if (query.equals("8")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='getPlanet?pkid=8'>Neptune</a>");
            out.println("</li>");
            if (query.equals("9")){
                out.println("<li class='nav-item active'>");}
            else {
                out.println("<li class='nav-item'>");
            }
            out.println("<a class='nav-link' href='citations.jsp?pkid=9'>Citations</a>");
            out.println("</li>");
            out.println("</ul>");
            out.println("</div>");
            out.println("</nav>");
            out.println("</br>");
            out.println("<script src='https://code.jquery.com/jquery-3.3.1.slim.min.js' crossorigin='anonymous'></script>");
            out.println("<script src='https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js' crossorigin='anonymous'></script>");
            out.println("<script src='https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js' crossorigin='anonymous'></script>");
            String myCard;
            myCard = new card().getCard(request, response);
            out.println(myCard);
            out.println("</body>");
            out.println("</html>");
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(pageServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {
            processRequest(request, response);
        } catch (Exception ex) {
            Logger.getLogger(pageServlet.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}

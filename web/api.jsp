<%-- 
    Document   : api.jsp
    Created on : Aug 1, 2019, 2:44:46 PM
    Author     : Christian Lay
--%>

<%@page import="org.json.simple.JSONObject"%>
<%@page import="org.json.simple.parser.JSONParser"%>
<%@page import="java.io.InputStreamReader"%>
<%@page import="java.io.BufferedReader"%>
<%@page import="java.net.URLConnection"%>
<%@page import="java.net.URL"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <title>The Planets | API Planet Data</title> 
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">
    </head>
    <%
        String query1 = request.getParameter("altName");
        String query2 = request.getParameter("imageLink");
        String returnData;
        String bufferedReturnData = "Nothing yet";
        String goBack = request.getHeader("referer");
        
        URL jsonpage = new URL("http://api.le-systeme-solaire.net/rest/bodies/{" +query1+ "}");
        URLConnection myUrlConnection = jsonpage.openConnection();
        BufferedReader myBufferedReader = new BufferedReader(new InputStreamReader(myUrlConnection.getInputStream()));

        while ((returnData = myBufferedReader.readLine()) != null)
        bufferedReturnData = returnData;
        Object obj = new JSONParser().parse(bufferedReturnData);
        JSONObject jo = (JSONObject) obj;
        
        String name = (String) jo.get("englishName");
        Long semimajorAxis = (Long) jo.get("semimajorAxis");
        Long perihelion = (Long) jo.get("perihelion");
        Long aphelion = (Long) jo.get("aphelion");
        Double eccentricity = (Double) jo.get("eccentricity");
        Double density = (Double) jo.get("density");
        Double gravity = (Double) jo.get("gravity");
        Double escape = (Double) jo.get("escape");
        Double meanRadius = (Double) jo.get("meanRadius");
        Double equaRadius = (Double) jo.get("equaRadius");
        Double polarRadius = (Double) jo.get("polarRadius");
              
        myBufferedReader.close();
        
        
    %>
    <body>
        <div style="height:10%">&nbsp;</div>
        <nav aria-label="breadcrumb">
            <ol class="breadcrumb">
              <li class="breadcrumb-item"><a href="index.jsp">Home</a></li>
              <li class="breadcrumb-item"><a href="<%= goBack %>"><%= name %></a></li>
              <li class="breadcrumb-item active" aria-current="page"><%= name %> API Data</li>
            </ol>
        </nav>
        <div class="card mb-3" style="max-width: 740px; left:2%">
            <div class="row no-gutters">
              <div class="col-md-4">
                <img src="<%= query2 %>" class="card-img" alt="<%= name %>">
              </div>
              <div class="col-md-8">
                <div class="card-body">
                  <h5 class="card-title"><%= name %></h5>
                  <p class="card-text" style="white-space: nowrap">
                      Semi-major Axis of the body in kilometers: <%= semimajorAxis %>
                      </br>
                      Perihelion in kilometers: <%= perihelion %>
                      </br>
                      Aphelion in kilometers: <%= aphelion %>
                      </br>
                      Orbital eccentricity: <%= eccentricity %>
                      </br>
                      Body density in g.cm<sup>3</sup>: <%= density %>
                      </br>
                      Surface gravity in m.s<sup>-2</sup>: <%= gravity %>
                      </br>
                      Escape speed in m.s<sup>-1</sup>: <%= escape %>
                      </br>
                      Mean radius in kilometers: <%= meanRadius %>
                      </br>
                      Equatorial radius in kilometers: <%= equaRadius %>
                      </br>
                      Polar radius in kilometers: <%= polarRadius %>
                  </p>
                  <p class="card-text"><small class="text-muted">Data retrieved from <a href="https://api.le-systeme-solaire.net/en/" target="_blank">The Solar System OpenData</a> API.</small></p>
                </div>
              </div>
            </div>
          </div>
        
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>

<%-- 
    Document   : citations
    Created on : Aug 1, 2019, 2:05:22 PM
    Author     : Christian Lay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>The Planets | Citations</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
        <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" crossorigin="anonymous">       
    </head>
    <body>
        <nav class="navbar navbar-expand-lg navbar-light bg-light">
            <a class="navbar-brand" href="#">ORNL Code Sample</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
              <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
              <ul class="navbar-nav">
                <li class="nav-item">
                  <a class="nav-link" href="index.jsp">Home</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=1">Mercury</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=2">Venus</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=3">Earth</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=4">Mars</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=5">Jupiter</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=6">Saturn</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=7">Uranus</a>
                </li>
                <li class="nav-item">
                  <a class="nav-link" href="getPlanet?pkid=8">Neptune</a>
                </li>
                <li class="nav-item active">
                  <a class="nav-link" href="#">Citations</a>
                </li>
              </ul>
            </div>
        </nav>
        
        <div class="jumbotron">
            <h1 class="display-4">Citations</h1>
            <p class="lead"> The sources used to assemble this application.</p>
            <hr class="my-4">
            <p>This is a code sample submitted by Jon Lay to the Oak Ridge National Laboratory (ORNL) on August, 2 2019, as a required step in the interview process for the position of Research Software Engineer for Web Applications. Per the instructions provided, this code sample seeks to be related in some way to the subject of the job posting, is object-oriented, contain at least five classes or components, uses modern front-end coding techniques, shows a sophisticated understanding of the project, and is an original product to a very high degree (>95%). It was created using the following technologies:</p>
                <ul>
                    <li>NetBeans IDE v.8.2</li>
                    <li>Java SE jdk 1.8</li>
                    <li>Apache Derby v.10.10.2.0</li>
                    <li>Bootstrap v.4.3</li>
                </ul>
            <p>Planetary images are retrieved from <a href="https://images.nasa.gov" target="_blank">images.nasa.gov</a>.</p>
            <p>Planetary data are retrieved from <a href="https://api.le-systeme-solaire.net/en/" target="_blank">The Solar System OpenData</a> API.</p>
        </div>  
        <p style="text-align: center">Jon-Christian Lay | (865) 679-0169 | <a href="mailto:christian.lay@gmail.com">christian.lay@gmail.com</a> | 523 N Bertrand Street #301, Knoxville, TN 37917</p>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>

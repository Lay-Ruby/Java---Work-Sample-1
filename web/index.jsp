<%-- 
    Document   : index
    Created on : Aug 1, 2019, 2:05:22 PM
    Author     : Christian Lay
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>The Planets | Home</title>
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
                <li class="nav-item active">
                  <a class="nav-link" href="#">Home</a>
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
                <li class="nav-item">
                  <a class="nav-link" href="citations.jsp?pkid=9">Citations</a>
                </li>
              </ul>
            </div>
        </nav>
        
        <div class="jumbotron">
            <h1 class="display-4">The Planets</h1>
            <p class="lead"> A brief overview of the planets of our solar system.</p>
            <hr class="my-4">
            <p>The planets of our solar system include Mercury, Venus, Earth, Mars, Jupiter, Saturn, Uranus, and Neptune. As humanity becomes a space faring species, these planets, as well as planetoids and satellites, will almost certainly be explored by man and machine and the United States of America will be leading the way. Use the navigation bar above to learn more about our nearest planetary neighbors.</p>          
        </div> 
        <p style="text-align: center">Jon-Christian Lay | (865) 679-0169 | <a href="mailto:christian.lay@gmail.com">christian.lay@gmail.com</a> | 523 N Bertrand Street #301, Knoxville, TN 37917</p>
        <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js" crossorigin="anonymous"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js" crossorigin="anonymous"></script>
        <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js" crossorigin="anonymous"></script>
    </body>
</html>

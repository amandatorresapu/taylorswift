<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    
   <!-- c:out ; c:forEach ; c:if -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%> 
   <!-- Formatting (like dates) -->
 <%@taglib uri="http://java.sun.com/jsp/jstl/fmt" prefix="fmt"%>
   <!-- form:form -->
 <%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>  
   <!-- for rendering errors on PUT routes -->
 <%@ page isErrorPage="true" %>   
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Taylors Version API</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">
      

</head>

<body>
  <header>
      <div class="navbar navbar-dark bg-dark box-shadow">
        <div class="container d-flex justify-content-between">
          <a href="/dashboard" class="navbar-brand d-flex align-items-center">
            <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
            <strong>Taylor's Version API -- Welcome ${user.name}</strong>
            <strong><a class="btn btn-outline-light" href="/createOne">Create new PL </a></strong>
            <strong><a class="btn btn-outline-light" href="/viewOne/sad">Sad</a><a class="btn btn-outline-light" href="/viewOne/happy">happy</a><a class="btn btn-outline-light" href="/viewOne/love">Love</a><a class="btn btn-outline-light" href="/viewOne/remix">remix</a></strong>
            <strong><a class="btn btn-outline-light" href="/allSongs">All Songs </a></strong>
          </a>
          
        </div>
        
    </header>

    <main role="main">
      
     
      <section class="jumbotron text-center">
       
        <div class="container">
          <h1 class="jumbotron-heading">taylor's version api</h1>
          <img src="/images/background.jpeg" class="img-fluid" alt="Responsive image">
          <p class="lead text-muted">an api dedicted to supporting and promoting taylor swift owned music</p>
          <p>
            <a href="https://taylorswiftapi.herokuapp.com/get" class="btn btn-primary my-2">Random Lyric inspiration?</a>
            <a href="https://spinthewheel.app/taylor-swift-songs" class="btn btn-secondary my-2">Need a TS song now?</a>
          </p>
        </div>
      </section>

      <div class="album py-5 bg-light">
        <div class="container">

          <div class="row">
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="/images/square1ts.jpeg" alt="Card image cap" width="400" height="400">
                <div class="card-body">
                  <p class="card-text">View All Taylor's Versions Songs here</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                       <a class="btn btn-dark" href="/allSongs" >View All</a>
                      
                      
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="/images/loversquare.jpeg" alt="Card image cap" width="400" height="400">
                <div class="card-body">
                  <p class="card-text">View Playlists here</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                     <a class="btn btn-dark m-1" href="/viewOne/sad">Sad</a><a class="btn btn-dark m-1" href="/viewOne/happy">happy</a><a class="btn btn-dark m-1" href="/viewOne/love">Love</a><a class="btn btn-dark m-1" href="/viewOne/remix">remix</a></strong>
                     
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
            <div class="col-md-4">
              <div class="card mb-4 box-shadow">
                <img class="card-img-top" src="/images/plts.jpeg" alt="Card image cap" width="400" height="400">
                <div class="card-body">
                  <p class="card-text">Make own taylors version Playlist</p>
                  <div class="d-flex justify-content-between align-items-center">
                    <div class="btn-group">
                      <a class="btn btn-dark" href="/createOne" >Create New Playlist</a>
                     
                    </div>
                    
                  </div>
                </div>
              </div>
            </div>
    </main>

   

    <!-- Bootstrap core JavaScript
    ================================================== -->
    <!-- Placed at the end of the document so the pages load faster -->
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>
    <script>window.jQuery || document.write('<script src="../../../../assets/js/vendor/jquery-slim.min.js"><\/script>')</script>
    <script src="../../../../assets/js/vendor/popper.min.js"></script>
    <script src="../../../../dist/js/bootstrap.min.js"></script>
    <script src="../../../../assets/js/vendor/holder.min.js"></script>
  </body>
</html>
        
        
        
        
    
</body>
</html>
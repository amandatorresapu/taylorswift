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
<title>Title Here</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
  <div class="container"> <!-- Beginning of Container -->
    <body>
      <header>
        
        </nav>
          <div class="navbar navbar-dark bg-dark box-shadow">
            <div class="container d-flex justify-content-between">
              <a href="/dashboard" class="navbar-brand d-flex align-items-center">
                <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="mr-2"><path d="M23 19a2 2 0 0 1-2 2H3a2 2 0 0 1-2-2V8a2 2 0 0 1 2-2h4l2-3h6l2 3h4a2 2 0 0 1 2 2z"></path><circle cx="12" cy="13" r="4"></circle></svg>
                <strong>Taylor's Version API -- Welcome ${user.name}</strong>
                <strong><a class="btn btn-outline-light" href="/viewOne/sad">Sad</a><a class="btn btn-outline-light" href="/viewOne/happy">happy</a><a class="btn btn-outline-light" href="/viewOne/love">Love</a><a class="btn btn-outline-light" href="/viewOne/remix">remix</a></strong>
                <strong><a class="btn btn-outline-light" href="/allSongs">All Songs </a></strong>
                <strong><a class="btn btn-outline-light" href="/dashboard">Dashboard </a></strong>
              </a>
              
            </div>
            
          </div>
        </header>
    
        <main role="main">
    
          <section class="jumbotron text-center">
            <div class="container">
              <h1 class="jumbotron-heading">All Taylors Version's Songs----Create your own playlist ${user.name}</h1>
              
              
              <p class="lead text-muted">an api dedicted to supporting and promoting taylor swift owned music</p>
              <form:form action="/createOne" method="post" modelAttribute="song">
                <input type="hidden" name="user" value="${user.id}">
                
                
                    <div class="form-group">
                        <label>Song Name</label>
                        <form:input path="songname" class="form-control" />
                        <form:errors path="songname" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Album:</label>
                     
                        <form:select path="album" title="SUBJECT" multiple="true"
                            size="3">
                            <form:option value="Lover" label="lover" />
                            <form:option value="Fearless" label="fearless" />
                            <form:option value="RED" label="red" />
                            
                            
                        </form:select>
                        <form:errors path="album" class="text-danger" />
                    </div>
                    <div class="form-group">
                      <label>Category</label>
                     
                      <form:select path="category" title="SUBJECT" multiple="true"
                          size="3">
                          <form:option value="love" label="love" />
                          <form:option value="happy" label="happy" />
                          <form:option value="sad" label="sad" />
                          
                          
                      </form:select>
                        <form:errors path="category" class="text-danger" />
                    </div>
                    <div class="form-group">
                        <label>Quote about the song:</label>
                        <form:input path="quote" class="form-control" />
                        <form:errors path="quote" class="text-danger" />
                    </div>
       
                    <input type="#" value="Make a new playlist" class="btn btn-dark" />
                </form:form>

              
            </div>
          </section>
    
         
        </main>
      </header>
    </body>
    </div>




    
        
        
    </div> <!-- End of Container -->
</body>
</html>
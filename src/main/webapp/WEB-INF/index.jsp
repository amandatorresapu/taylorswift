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
<title>Taylor's Version API</title>
  <!-- Bootstrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.2/dist/css/bootstrap.min.css" 
      rel="stylesheet" 
      integrity="sha384-EVSTQN3/azprG1Anm3QDgpJLIm9Nao0Yz1ztcQTwFspd3yD65VohhpuuCOmLASjC" 
      crossorigin="anonymous">

</head>
<body>
    <div class="container"> <!-- Beginning of Container -->
        <h1>Taylor's Version API</h1>
         

        <!-- Section: Design Block -->
<section class=" text-center text-lg-start">
  <style>
    .rounded-t-5 {
      border-top-left-radius: 0.5rem;
      border-top-right-radius: 0.5rem;
    }

    @media (min-width: 992px) {
      .rounded-tr-lg-0 {
        border-top-right-radius: 0;
      }

      .rounded-bl-lg-5 {
        border-bottom-left-radius: 0.5rem;
      }
    }
  </style>
  <div class=" mb-2">
    <div class="row g-0 d-flex align-items-center">
      <div class="col-lg-4 d-none d-lg-flex">
        <img src="/images/wd.jpeg" alt="the Queen T"
          class="w-100 rounded-t-5 rounded-tr-lg-0 rounded-bl-lg-5" />
      </div>
      <div class="col-lg-8">
        <div class="card-body py-1 px-md-3">
          
          <h1>Registration</h1>
          <form:form action="/register" method="post" modelAttribute="newUser">
            <div class="form-group">
                <label>First Name:</label>
                <form:input path="name" class="form-control" />
                <form:errors path="name" class="text-danger" />
            </div>
            <div class="form-group">
                <label>Email:</label>
                <form:input path="email" class="form-control" />
                <form:errors path="email" class="text-danger" />
            </div>
            <div class="form-group">
                <label>Password:</label>
                <form:password path="password" class="form-control" />
                <form:errors path="password" class="text-danger" />
            </div>
            <div class="form-group">
                <label>Confirm Password:</label>
                <form:password path="confirm" class="form-control" />
                <form:errors path="confirm" class="text-danger" />
            </div>
            <br>
            <input type="submit" value="Register" class="btn btn-outline-dark" />
            <br>
        </form:form>
        <h1>Login</h1>
        <form:form action="/login" method="post" modelAttribute="newLogin">
          <div class="form-group">
              <label>Email:</label>
              <form:input path="email" class="form-control" />
              <form:errors path="email" class="btn btn-light" />
          </div>
          <div class="form-group">
              <label>Password:</label>
              <form:password path="password" class="form-control" />
              <form:errors path="password" class="btn btn-light" />
          </div>
          <br>
          <input type="submit" value="Login" class="btn btn-outline-dark" />
       </form:form>  

         

        </div>
      </div>
    </div>
  </div>
</section>
<!-- Section: Design Block -->
        
   
       
                
        

    </div> <!-- End of Container -->
</body>
</html>
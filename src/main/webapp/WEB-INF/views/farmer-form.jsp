<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html" charset=ISO-8859-1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
  				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
  				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script> 
<body>
  <div class="container">
    <div class="row">
      <div class="col-sm-9 col-md-7 col-lg-5 mx-auto">
        <div class="card card-signin my-5">
          <div class="card-body">
            <h5 class="card-title text-center">Sign In</h5>
            <form:form class="form-signin" action="loginUser" method="post" modelAttribute="user">
              <div class="form-label-group">
                    <label for="inputEmail">Email address</label>
                <input type="email" id="inputEmail" class="form-control" placeholder="Email address" required autofocus>
                
              </div>

              <div class="form-label-group">
                    <label for="inputPassword">Password</label>
                <input type="password" id="inputPassword" class="form-control" placeholder="Password" required>
               
              </div><br>



              <div class="custom-control custom-checkbox mb-3">
                    <!--  <input type="checkbox" class="custom-control-input" id="customCheck1">-->
                    <a href class="custom-control-label" for="customCheck1">Forgot password?</a>
                  </div>
              <button class="btn btn-lg btn-primary btn-block text-uppercase" type="submit" >Sign in</button>
              <hr class="my-4">
              
            </form>
            </form:form>
          </div>

          <div>
              
           <a class="button btn btn-primary"  href="<c:url value="../farmer/showFarmer"/>">Farmer ? SignUp</a> 
 
            
                                </div>
        </div>
      </div>
    </div>
  </div>
</body>
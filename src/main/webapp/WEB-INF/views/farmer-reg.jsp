<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<!DOCTYPE html>
<html>
<head>
<meta name="viewport" content="width=device-width, initial-scale=1">
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/css/bootstrap.min.css">  
  				<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>  
  				<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.6/umd/popper.min.js"></script>  
  				<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0-beta.2/js/bootstrap.min.js"></script>

    <div class="container">
	<div class="row">
        <div class="col-md-6">
        <form:form action="saveFarmer" method="post" modelAttribute="farmer">
         
           <!--  <form action="" method="post" id="fileForm" role="form" class="row align-items-center justify-content-center"> -->
            <fieldset><legend class="text-center">Farmer Registration Form</legend>

            <!--Personal Details-->
     <div class="card">
        <div class="card-body">
                <label class="row align-items-center justify-content-center" >Personal Details</label> 
            <div class="form-group"> 	 
                <label for="fullname"><span class="req">* </span> Full name: </label>
                    <input class="form-control" type="text" name="fullname" id = "txt" onkeyup = "Validate(this)" required path="fullname" />
                
                        <div id="errFirst"></div>    
            </div>
            <div class="form-group">
                    <label for="contact"><span class="req">* </span> Phone Number: </label>
                            <input required type="number" name="contact" id="contact" class="form-control phone" maxlength="28" onkeyup="validatephone(this);" placeholder="not used for marketing" path="contact"/> 
                    </div>

            
            <div class="form-group">
                <label for="email_id"><span class="req">* </span> Email Address: </label> 
                    <input class="form-control" required type="text" name="email_id" id = "email"  onchange="email_validate(this.value);" path="email_id" />   
                        <div class="status" id="status"></div>
            </div>
        </div>
     </div>

            
<!--***************Personal Details******-->
<!--Address-->
<div class="card">
        <div class="card-body">
                <label class="row align-items-center justify-content-center" >Address Details</label>
<div class="form-group"> 	 
        <label for="addressline1"><span class="req">* </span> Address Line 1 </label>
            <input class="form-control" type="text" name="addressline1" id = "txt" onkeyup = "Validate(this)" required /> 
                <div id="addressline1"></div>   
                

                <div class="form-group"> 	 
                        <label for="addressline2"><span class="req">* </span> City </label>
                            <input class="form-control" type="text" name="addressline2" id = "txt" onkeyup = "Validate(this)" required /> 
                                <div id="addressline2"></div> 

                                <div class="form-group"> 	 
                                        <label for="addressline2"><span class="req">* </span> State </label>
                                            <input class="form-control" type="text" name="addressline2" id = "txt" onkeyup = "Validate(this)" required /> 
                                                <div id="addressline2">

                                         </div>
                                         
                                         <div class="form-group"> 	 
                                                <label for="addressline2"><span class="req">* </span> Country </label>
                                                    <input class="form-control" type="text" name="addressline2" id = "txt" onkeyup = "Validate(this)" required /> 
                                                        <div id="addressline2">
        
                                                 </div>

                        <div class="form-group">
                                                <label for="pincode"><span class="req">* </span> Pincode </label>
                                                        <input required type="number" name="pincode" id="pincode" class="form-control phone" maxlength="6" onkeyup="validatephone(this);" placeholder="6 digits pin"/> 
                                                </div>
                                         </div>
                                </div>
                                          

<!--***************Address******-->
<!--Land Details-->

<div class="card">
        <div class="card-body">
                <label class="row align-items-center justify-content-center" >Land Details</label>

<div class="form-group"> 	 
        <label for="area"><span class="req">* </span> Area Of Land </label>
            <input class="form-control" type="text" name="area" id = "txt" onkeyup = "Validate(this)" required /> 
                <div id="area"></div>   
                

                <div class="form-group"> 	 
                        <label for="addressland"><span class="req">* </span> Address </label>
                            <input class="form-control" type="text" name="addressland" id = "txt" onkeyup = "Validate(this)" required /> 
                                <div id="addressland"></div> 

                          

                        <div class="form-group">
                                                <label for="pincode2"><span class="req">* </span> Pincode </label>
                                                        <input required type="number" name="pincode2" id="pincode2" class="form-control" maxlength="6" onkeyup="validate(this);" placeholder="6 digits pin"/> 
                                                </div>
                                     </div>
                            </div> 

<!--*******Land Details******-->

  <!--Bank Details-->
  <div class="card">
        <div class="card-body">
                <label class="row align-items-center justify-content-center" >Bank Details</label>
  <div class="form-group">
        <label for="upi"><span class="req">* </span> UPI: </label>
                <input required type="text" name="upi" id="account" class="form-control"  onkeyup="validate(this);" /> 
        </div>

         <!-- <div class="form-group">
                <label for="ifsccode"><span class="req">* </span>IFSC Code: </label>
                        <input required type="text" name="ifsccode" id="ifsccode" class="form-control" maxlength="11" onkeyup="validate(this);" /> 
                </div>-->
        </div>
  </div>
    
<!--*******Bank details******-->
  <!--Document Upload-->
  <div class="card">
        <div class="card-body">
                <label class="row align-items-center justify-content-center" >Document Upload</label>
  <div class="form-group">
        <label for="adhaarnumber"><span class="req">* </span> Adhaar Number: </label>
                <input required type="text" name="adhaarnumber" id="adhaarnumber" class="form-control" onkeyup="validate(this);" /> 
        </div>

        <div class="form-group">
                <label for="pannumber"><span class="req">* </span>PAN: </label>
                        <input required type="text" name="pannumber" id="pannumber" class="form-control" maxlength="10" onkeyup="validate(this);" /> 
                </div>
                <div class="form-group">
                        <label for="certificate">Certificate: </label>
                                <input type="text" name="certificate" id="certificate" class="form-control"  onkeyup="validate(this);" /> 
                        </div>
        </div></div>

<!--*******Document Upload*****-->

<!--Password-->
<div class="card">
        <div class="card-body">
                <label class="row align-items-center justify-content-center" >Password</label>
<div class="form-group">
        <label for="password"><span class="req">* </span> Password: </label>
            <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16"  id="pass1" path="password"/> </p>

        <label for="password"><span class="req">* </span> Password Confirm: </label>
            <input required name="password" type="password" class="form-control inputpass" minlength="4" maxlength="16" placeholder="Enter again to validate"  id="pass2" onkeyup="checkPass(); return false;" />
                <span id="confirmMessage" class="confirmMessage"></span>
    </div>
</div>
</div>

<!--******Password*****--> 
            <div class="form-group">
            
                <?php //$date_entered = date('m/d/Y H:i:s'); ?>
                <input type="hidden" value="<?php //echo $date_entered; ?>" name="dateregistered">
                <input type="hidden" value="0" name="activate" />
                <hr>

                <input type="checkbox" required name="terms" onchange="this.setCustomValidity(validity.valueMissing ? 'Please indicate that you accept the Terms and Conditions' : '');" id="field_terms">   <label for="terms">I have provided the information above to the best of my knowledge.</label><span class="req">* </span>
            </div>
<!--Buttons-->
            <div class="row">
                    <div class="col-sm-12 text-center">
                        <button class="btn btn-primary btn-md">Register</button>
                        <button class="btn btn-danger btn-md">Reset</button>
                     </div>
                </div>

<!--*****Buttons****-->                
                      <!--<h5>You will receive an email to complete the registration and validation process. </h5>
                      <h5>Be sure to check your spam folders. </h5> -->
 

            </fieldset>
         

<script type="text/javascript">
  document.getElementById("field_terms").setCustomValidity("Please indicate that you accept the Terms and Conditions");
</script>
 </form:form>
	</div>
	</div>
</div>

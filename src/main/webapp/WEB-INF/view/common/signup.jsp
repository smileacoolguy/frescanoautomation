<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

<defaultTemplate:defaultDecorator>
<jsp:attribute name="title">Home</jsp:attribute>
<jsp:body>
<title>Home</title>
<input type="hidden" id="contextPath" value="${contextPath}" />

<!-- <section class="subHeader page">
    <div class="container">
    	<h1>Register Form</h1>
    </div>
</section> -->

<!-- start main content -->
<section class="properties" style="padding-top: 135px;">
    <div class="container">
        <div class="row">
         <form method="post"  id="signup-form" >
         	<c:if test="${not empty message}">
           	   <c:if test="${flag}"><div class="alert alert-danger" role="alert">	</c:if>
             	    	<c:if test="${flag eq false}"><div class="alert alert-success" role="alert">	</c:if>
	           	  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				  <strong>${message}</strong> 
				</div>
			  </c:if>
            <div class="col-lg-4">
                <h3>REGISTER</h3>
                <div class="divider"></div>
                <p style="font-size:13px;">Already have an account? <a href="${contextPath}/login"><strong> Login here! </strong></a></p>
                <!-- start login form -->
                <div class="filterContent defaultTab sidebarWidget">
                    <div class="row">
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="firstname">First Name <span id="requiredFiled"> * </span></label><br/>
                            <input type="text" name="firstname" id="firstname"  required="required"/>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="lastname">Last Name</label><br/>
                            <input type="text" name="lastname" id="lastname" />
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="mobileno">Mobile Number <span id="requiredFiled"> * </span></label><br/>
                            <input type="text" name="mobile_no" id="mobile_no" required="required"/>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="phoneNumber">Land line</label><br/>
                            <input type="text" name="phoneNumber" id="phoneNumber"  />
                            </div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                </div>
            </div>
          
	        <div class="col-lg-4 col-lg-offset-0" style="top: 92px;">
	              <div class="filterContent defaultTab sidebarWidget">
                       <div class="row">
                           <div class="col-lg-12 col-md-12 col-sm-6">
                               <div class="formBlock">
                               <label for="email">Email <span id="requiredFiled"> * </span></label><br/>
                               <input type="email" name="email" id="email" required="required"/>
                               </div>
                           </div>
                           <div class="col-lg-12 col-md-12 col-sm-6">
                               <div class="formBlock">
                               <label for="pass">Password <span id="requiredFiled"> * </span></label><br/>
                               <input type="password" name="password" id="password" required="required"/>
                               </div>
                           </div>
                           <div class="col-lg-12 col-md-12 col-sm-6">
                               <div class="formBlock">
                               <label for="confirmPass">Confirm Password <span id="requiredFiled"> * </span></label><br/>
                               <input type="password" name="confirmPass" id="confirmPass" required="required"/>
                               </div>
                           </div>
                          
                           <div style="clear:both;"></div>
                       </div>
	                </div>
	        </div>
	        <div class="col-lg-4 col-lg-offset-0" style="top: 92px;">
              <div class="filterContent defaultTab sidebarWidget">
                    <div class="row">
                      <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="country">Country <span id="requiredFiled"> * </span></label><br/>
                            <select onchange="print_state('state',this.selectedIndex);" id="country" name ="country" required="required">
                            </select>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="state">State <span id="requiredFiled"> * </span></label><br/>
                           <select name ="state" id ="state" required="required"></select>
                            </div>
                        </div>
                        <div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="city">City <span id="requiredFiled"> * </span></label><br/>
                            <input type="text" name="city" id="city" required="required"/>
                            </div>
                        </div>
                    	<div class="col-lg-12 col-md-12 col-sm-6">
                            <div class="formBlock">
                            <label for="zipcode">Zincode <span id="requiredFiled"> * </span></label><br/>
                            <input type="text" name="zipcode" id="zipcode" required="required"/>
                            </div>
                        </div>
                        <div style="clear:both;"></div>
                    </div>
                    <div class="col-lg-12 col-md-12 col-sm-6">
		                 <div class="formBlock">
		                     <input class="buttonColor" type="submit" value="REGISTER" style="margin-top:24px;">
		                 </div>
		             </div>
                </div>
           </div>
             
           </form>
        </div>
    </div>
</section>
<!-- end main content -->



</jsp:body>
</defaultTemplate:defaultDecorator>

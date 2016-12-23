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

<!-- start subheader -->
<!-- <section class="subHeader page">
    <div class="container">
    	<h1>Login Form</h1>
    </div>
</section> -->

<!-- start main content -->
<section class="properties" style=" padding-top: 135px;">
    <div class="container">
        <div class="row">
			<c:if test="${not empty message}">
    			<c:if test="${flag}"><div class="alert alert-danger" role="alert">	</c:if>
            	<c:if test="${flag eq false}"><div class="alert alert-success" role="alert">	</c:if>
	           	  <a href="#" class="close" data-dismiss="alert" aria-label="close">&times;</a>
				  <strong>${message}</strong> 
				</div>
			</c:if>
            <div class="col-lg-4 col-lg-offset-4">
                <h3>LOGIN</h3>
                <div class="divider"></div>
                <p style="font-size:13px;">Don't have an account yet? <a href="${contextPath}/signup-page"><strong> Register here! </strong></a></p>
                <!-- start login form -->
                <div class="filterContent defaultTab sidebarWidget">
                    <form method="post" action="${contextPath}/login" id="login_form">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="mobile_no">Mobile Number  </label><br/>
                                <input type="text" name="mobile_no" id="mobile_no"  required="required"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="pass">Password</label><br/>
                                <input type="password" name="password" id="password" required="required"/>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                    <input class="buttonColor" type="submit" value="LOGIN" style="margin-top:24px;">
                                </div>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                    </form>
                </div>
            </div>
            
        </div>
    </div>
</section>

</jsp:body>
</defaultTemplate:defaultDecorator>

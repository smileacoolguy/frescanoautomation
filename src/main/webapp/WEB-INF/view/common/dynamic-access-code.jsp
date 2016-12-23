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
                <h3>Dynamic Access Code ( DAC )</h3>
                <div class="divider"></div>
                <!-- start login form -->
                <div class="filterContent defaultTab sidebarWidget">
                    <form action="${contextPath}/submit-dac" method="post" id="dac_update">
                        <input type="hidden" name="userId" value="${userId}">
                        <div class="row">
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                <label for="dynamic_access_code">Dynamic Access Code </label><br/>
                                <input type="text" id="dynamic_access_code" name="dynamic_access_code"  placeholder=" Enter dynamic access code" maxlength="6" required>
                                </div>
                            </div>
                            <div class="col-lg-12 col-md-12 col-sm-6">
                                <div class="formBlock">
                                    <input class="buttonColor" type="submit" value="Continue" style="margin-top:24px;">
                                </div>
                            </div>
                            <div style="clear:both;"></div>
                        </div>
                    </form>
                     <a href="${contextPath}/re-generate-dac/${userId}" > <strong>Re-generate dynamic access code </strong></a>
                </div>
            </div>
            
        </div>
    </div>
</section>

</jsp:body>
</defaultTemplate:defaultDecorator>

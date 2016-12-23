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
<section class="subHeader page">
    <div class="container">
    	<h1>Contact Us</h1>
    </div>
</section>

<!-- start main content -->
<section class="properties">
    <div class="container">
        <div class="row">
        
            <!-- start left column -->
            <div class="col-lg-4 col-md-4">
                <div id="map-canvas-one-pin" class="mapSmall"></div>
                <p>Duis elementum ullamcorper mi, ut sit ullamcorper 
                urna fringilla eget. In in non lectus sit amet lorem 
                convallis lorem et quis nunc.</p> 

                <p>Sed ullamcorper purus.Duis elementum ullamcorper 
                mi, ut sit ullamcorper urna fringilla eget. In in non 
                lectus sit amet lorem convallis lorem et quis nunc. 
                Sed ullamcorper purus.</p><br/>
            </div><!-- end left column -->

            <!-- start contact form -->
            <div class="col-lg-8 col-md-8">
                <div class="row">
                    <div class="col-lg-12 col-md-12">
                        <h3>GET IN TOUCH</h3>
                        <div class="divider"></div>
                        <ul class="contactDetails">
                            <li><img src="images/icon-mail.png" alt="" />info@easyLivingTheme.com</li>
                            <li><img src="images/icon-phone.png" alt="" />1-800-192-0978</li>
                            <li><img src="images/icon-pin.png" alt="" />467 Smith Drive Baltimore, MD</li>
                        </ul>
                                                                        <form method="post" action="http://rypecreative.com/easy-living/contact.php" id="contact-us">
                            <div class="row">
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="formBlock">
                                        <label for="contactName">Your Name</label><br/>
                                                                                <input type="text" name="contactName" id="contactName" class="requiredField" value="" />
                                    </div>
                                </div>
                                <div class="col-lg-6 col-md-6 col-sm-6">
                                    <div class="formBlock">
                                        <label for="email">Your Email</label><br/>
                                                                                <input type="text" name="email" id="email" class="requiredField email" value="" />
                                    </div>
                                </div>
                                <div class="col-lg-12">
                                    <div class="formBlock">
                                        <label for="message">Your Message</label><br/>
                                                                                <textarea name="comments" id="message" class="requiredField formDropdown"></textarea>
                                    </div>
                                </div>
                                <div class="col-lg-3 col-lg-offset-9 col-md-4 col-md-offset-8 col-sm-4 col-sm-offset-8">
                                    <div class="formBlock">
                                        <input class="buttonColor" type="submit" value="SEND" />
                                        <input type="hidden" name="submitted" id="submitted" value="true" />
                                    </div>
                                </div>
                            </div>
                        </form>
                     </div>
                </div> 
            </div> 

        </div> 
    </div> 
</section>

  <jsp:include page="/WEB-INF/view/common/contact.jsp"></jsp:include>

</jsp:body>
</defaultTemplate:defaultDecorator>
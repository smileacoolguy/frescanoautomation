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
    	<!-- <h1>Agents Listing </h1> -->
    </div>
</section>

<section class="properties">
    <div class="container">
        <div class="row">
            <!-- start content -->
            <div class="col-lg-9 col-md-9">
                <div class="row">
                    <div class="col-lg-4">
                        <img class="agentImg" src="/agentImg/${agentdetails.agentModifiedImg}" alt="" />
                        <div class="overview">
                        <h4>AGENT INFO</h4>
                        <ul class="overviewList">
                            <li>Email <span>${agentdetails.agentEmail}</span></li>
                            <li>Mobile Phone <span>${agentdetails.mobileNo}</span></li>
                            <li>Office Phone <span>${agentdetails.officeNo}</span></li>
                        </ul>
                        <div class="divider thin" style="margin-top:0px;"></div>
                        <ul class="socialIcons agent">
                            <li><a href="#"><img src="${contextPath}/resources/default/images/icon-fb.png" alt="" /></a></li>
                            <li><a href="#"><img src="${contextPath}/resources/default/images/icon-twitter.png" alt="" /></a></li>
                            <li><a href="#"><img src="${contextPath}/resources/default/images/icon-google.png" alt="" /></a></li>
                            <li><a href="#"><img src="${contextPath}/resources/default/images/icon-rss.png" alt="" /></a></li>
                        </ul>
                        </div>
                    </div>
                    <div class="col-lg-8">
                        <h1>${agentdetails.agentName}</h1>
                        <p>${agentdetails.description}</p>
                       <br/>
                    </div>
                </div>

                <!-- start related properties -->
                <h4>CURRENTLY LISTED PROPERTIES BY <a href="#">${agentdetails.agentName}</a></h4>
                <div class="divider thin"></div>
                <div class="row">
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="propertyItem">
                            <div class="propertyContent">
                                <a class="propertyType" href="#">FAMILY HOME</a>
                                <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="images/home3.jpg" alt="" /></a>
                                <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                                <p>Baltimore, MD</p>
                                <div class="divider thin"></div>
                                <p class="forSale">FOR SALE</p>
                                <p class="price">$687,000</p>
                            </div>
                            <table border="1" class="propertyDetails">
                                <tr>
                                <td><img src="images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                                <td><img src="images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                                <td><img src="images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                                </tr>
                            </table> 
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="propertyItem">
                            <div class="propertyContent">
                                <span class="openHouse">OPEN HOUSE</span>
                                <a class="propertyType" href="#">APARTMENT</a>
                                <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="images/home3.jpg" alt="" /></a>
                                <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                                <p>Baltimore, MD</p>
                                <div class="divider thin"></div>
                                <p class="forSale">FOR RENT</p>
                                <p class="price">$1,200/mo</p>
                            </div>
                            <table border="1" class="propertyDetails">
                                <tr>
                                <td><img src="images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                                <td><img src="images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                                <td><img src="images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                                </tr>
                            </table> 
                        </div>
                    </div>
                    <div class="col-lg-4 col-md-4 col-sm-6">
                        <div class="propertyItem">
                            <div class="propertyContent">
                                <a class="propertyType" href="#">FAMILY HOME</a>
                                <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="images/home3.jpg" alt="" /></a>
                                <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                                <p>Baltimore, MD</p>
                                <div class="divider thin"></div>
                                <p class="forSale">FOR SALE</p>
                                <p class="price">$687,000</p>
                            </div>
                            <table border="1" class="propertyDetails">
                                <tr>
                                <td><img src="images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                                <td><img src="images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                                <td><img src="images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                                </tr>
                            </table> 
                        </div>
                    </div>
                </div>
                <br/>
                <!-- start contact form -->
                <h4>CONTACT AGENT</h4>
                <div class="divider thin"></div>
                <form method="post" action="#">
                    <div class="row">
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="formBlock">
                                <label for="name">Your Name</label><br/>
                                <input type="text" name="name" id="name" />
                            </div>
                        </div>
                        <div class="col-lg-6 col-md-6 col-sm-6">
                            <div class="formBlock">
                                <label for="email">Your Email</label><br/>
                                <input type="text" name="email" id="email" />
                            </div>
                        </div>
                        <div class="col-lg-12">
                            <div class="formBlock">
                                <label for="message">Your Message</label><br/>
                                <textarea name="message" id="message" class="formDropdown"></textarea>
                            </div>
                        </div>
                        <div class="col-lg-3 col-lg-offset-9 col-md-4 col-md-offset-8 col-sm-4 col-sm-offset-8">
                            <div class="formBlock">
                                <input class="buttonColor" type="submit" value="CONTACT AGENT" />
                            </div>
                        </div>
                    </div>
                </form>
                <!-- end contact form -->
                <br/>
            </div><!-- end content -->

            <!-- start sidebar -->
            <div class="col-lg-3 col-md-3">
                <jsp:include page="/WEB-INF/view/common/quick-search.jsp"></jsp:include>

                <!-- start recent posts widget -->
                <jsp:include page="/WEB-INF/view/common/recent-posts.jsp"></jsp:include>
                <!-- end recent posts widget -->

                <!-- start property types widget -->
                <h3>PROPERTY TYPES</h3>
                <div class="divider"></div>
                <div class="propertyTypesWidget sidebarWidget">
                    <ul>
                        <li><h4><a href="#">FAMILY HOUSE</a></h4></li>
                        <li><h4><a href="#">SINGLE HOUSE</a></h4></li>
                        <li><h4><a href="#">APARTMENT</a></h4></li>
                        <li><h4><a href="#">CONDO</a></h4></li>
                        <li><h4><a href="#">VILLA</a></h4></li>
                        <li><h4><a href="#">OFFICE BUILDING</a></h4></li>
                    </ul>
                </div>
                <!-- end property types widget -->

            </div>
        </div>

    </div>
</section>
<!-- end main content -->

<!-- start call to action -->
<jsp:include page="/WEB-INF/view/common/contact.jsp"></jsp:include>
<!-- end call to action -->



</jsp:body>
</defaultTemplate:defaultDecorator>
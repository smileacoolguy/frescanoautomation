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

<section class="subHeader page">
    <div class="container">
    	<h1>Property Listing Grid</h1>
    </div> 
</section> 

<!-- start recent properties -->
<section class="properties">
    <div class="container">
    	<ul class="propertyCat_list option-set">
    		<li><a href="#" data-filter="*" class="current triangle">ALL</a></li>
    		<li><a href="#" data-filter=".sale">FOR SALE</a></li>
            <li><a href="#" data-filter=".rent">FOR RENT</a></li>
    	</ul>
    	<ul class="propertySort_list">
    		<li style="padding-right:0px;">
    			<form style="margin-top:-10px;">
    			<div class="formBlock select">
                    <select name="property type" id="propertyType" class="formDropdown" style="padding:6px;">
                        <option value="">Any</option>
                        <option value="Family Home">Family Home</option>
                        <option value="Apartment">Apartment</option>
                        <option value="Condo">Condo</option>
                        <option value="Villa">Villa</option>
                    </select>
                </div>
            	</form>
    		</li>
    		<li><p>Property Type:</p></li>
    		<li><div style="width:1px; height:45px; margin-top:-12px; background-color:#c5c5c5;"></div></li>
    		<li><a href="listing_grid.html"><img src="${contextPath}/resources/default/images/icon-grid.png" alt="" /></a></li>
    		<li><a href="listing_row.html"><img src="${contextPath}/resources/default/images/icon-row.png" alt="" /></a></li>
    	</ul>
        <div class="divider"></div>
        <div class="row">
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                        <a class="propertyType" href="#">FAMILY HOME</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home1.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                    	<span class="openHouse">OPEN HOUSE</span>
                        <a class="propertyType" href="#">APARTMENT</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home2.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR RENT</p>
                        <p class="price">$1,200/mo</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                        <a class="propertyType" href="#">CONDO</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home3.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                        <a class="propertyType" href="#">VILLA</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home4.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                        <a class="propertyType" href="#">VILLA</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home1.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                        <a class="propertyType" href="#">VILLA</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home2.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                    	<span class="openHouse">OPEN HOUSE</span>
                        <a class="propertyType" href="#">VILLA</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home3.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
            <div class="col-lg-3 col-md-3 col-sm-6">
                <div class="propertyItem">
                    <div class="propertyContent">
                        <a class="propertyType" href="#">VILLA</a>
                        <a href="property_single.html" class="propertyImgLink"><img class="propertyImg" src="${contextPath}/resources/default/images/home4.jpg" alt="" /></a>
                        <h4><a href="property_single.html">587 Smith Avenue</a></h4>
                        <p>Baltimore, MD</p>
                        <div class="divider thin"></div>
                        <p class="forSale">FOR SALE</p>
                        <p class="price">$687,000</p>
                    </div>
                    <table border="1" class="propertyDetails">
                        <tr>
                        <td><img src="${contextPath}/resources/default/images/icon-area.png" alt="" style="margin-right:7px;" />2,412m</td>
                        <td><img src="${contextPath}/resources/default/images/icon-bed.png" alt="" style="margin-right:7px;" />6 Beds</td>
                        <td><img src="${contextPath}/resources/default/images/icon-drop.png" alt="" style="margin-right:7px;" />3 Baths</td>
                        </tr>
                    </table> 
                </div>
            </div>
        </div> 
        <ul class="pageList">
            <li><a href="#">&lt;</a></li>
            <li><a href="#" class="current">1</a></li>
            <li><a href="#">2</a></li>
            <li><a href="#">3</a></li>
            <li><a href="#">&gt;</a></li>
        </ul>
    </div>
</section>

<jsp:include page="/WEB-INF/view/common/contact.jsp"></jsp:include>

</jsp:body>
</defaultTemplate:defaultDecorator>


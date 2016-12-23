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
    	<h1>Agents Listing </h1>
    </div>
</section>

<section class="properties">
    <div class="container">

        <div class="row">
            <div class="col-lg-9 col-md-9">

            <div class="row">
            <c:forEach items="${agentslist}" var="agentslist">
                <div class="col-lg-12">
                    <div class="propertyItem">
                        <div class="propertyContent row">
                            <div class="col-lg-5 col-md-5 col-sm-5">
                            <a href="agent_single.html" class="propertyImgLink"><img class="propertyImgRow" src="${contextPath}/resources/default/images/agent5.jpg" alt="" /></a>
                            </div>
                            <div class="col-lg-7 col-md-7 col-sm-7 rowText agentRow">
                            <h4><a href="agent_single.html">${agentslist.agentName}</a></h4>
                            <a href="#" class="price"><span style="color:#4a4786;">68</span> Properties Listed</a><br/>
                            <p>${agentslist.officeNo}<br/>${agentslist.agentEmail}</p>
                            <p>${agentslist.description}</p>
                            <table border="1" class="agentDetails">
                                <tr>
                                <td>
                                <ul class="socialIcons">
                                    <li><a href="#"><img src="${contextPath}/resources/default/images/icon-fb.png" alt="" /></a></li>
                                    <li><a href="#"><img src="${contextPath}/resources/default/images/icon-twitter.png" alt="" /></a></li>
                                    <li><a href="#"><img src="${contextPath}/resources/default/images/icon-google.png" alt="" /></a></li>
                                    <li><a href="#"><img src="${contextPath}/resources/default/images/icon-rss.png" alt="" /></a></li>
                                </ul>
                                </td>
                                <td>
                                <a href="${contextPath}/agent-details/${agentslist.agentId}" class="buttonGrey">READ MORE</a>
                                </td>
                                </tr>
                            </table>  
                            </div>
                        </div>
                    </div>
                </div>
                </c:forEach>
                <ul class="pageList">
                    <li><a href="#">&lt;</a></li>
                    <li><a href="#" class="current">1</a></li>
                    <li><a href="#">2</a></li>
                    <li><a href="#">3</a></li>
                    <li><a href="#">&gt;</a></li>
                </ul>
            </div><!-- end row -->
        </div><!-- end col -->

        <!-- start sidebar -->
        <div class="col-lg-3 col-md-3">
          <jsp:include page="/WEB-INF/view/common/quick-search.jsp"></jsp:include>
             
           <jsp:include page="/WEB-INF/view/common/recent-posts.jsp"></jsp:include>

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
        </div> 
        </div> 
    </div> 
</section>
<!-- end properties -->

 <jsp:include page="/WEB-INF/view/common/contact.jsp"></jsp:include>

</jsp:body>
</defaultTemplate:defaultDecorator>

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
    	<h1>Blog Classic</h1>
    	<form class="searchForm" method="post" action="#">
            <input type="text" name="search" value="Search our site" />
        </form>
    </div><!-- end subheader container -->
</section><!-- end subheader section -->

<!-- start main content -->
<section class="properties">
    <div class="container">
        <div class="row">
            <div class="col-lg-9 col-md-9">
            <div class="row">
                <div class="col-lg-12 col-md-12">
                    <div class="blogPost">
                        <a href="blog_single.html" class="propertyImgLink"><img class="propertyImgRow" src="${contextPath}/resources/default/images/banner4.jpg" alt="" /></a>
                        <div class="propertyContent row">
                            <div class="col-lg-12 rowText">
                            <table border="1" class="blogDetails">
                                <tr>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-date.png" alt="" style="margin-right:7px;" />12 MARCH 2014</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-comment.png" alt="" style="margin-right:7px;" />17 COMMENTS</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-heart.png" alt="" style="margin-right:7px;" />13 LIKES</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-share.png" alt="" style="margin-right:7px;" />SHARE</a></td>
                                </tr>
                            </table>
                            <h4><a href="blog_single.html">THIS IS AN AWESOME BLOG POST TITLE</a></h4><br/>
                            <span>POSTED BY <a href="#">JOHN DOE</a> IN <a href="#">NEWS</a></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu dignissim erat, el placerat risus. Proin luctus tortor sit 
                            varius elementum. Duis ut condimentum risus, ac accumsan dui. Donec nibh elit, elementum dapibus massa sit amet, lorem
                            lacusfaucibus lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque habitant morbi tristique  
                            senectus et netus et malesuada fames ac turpis egestas. Curabitur at est eu ipsum auctor suscipit. [...]</p><br/>
                            <a class="buttonGrey" href="blog_single.html">READ MORE</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="blogPost">
                        <a href="blog_single.html" class="propertyImgLink"><img class="propertyImgRow" src="${contextPath}/resources/default/images/banner3.jpg" alt="" /></a>
                        <div class="propertyContent row">
                            <div class="col-lg-12 rowText">
                            <table border="1" class="blogDetails">
                                <tr>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-date.png" alt="" style="margin-right:7px;" />12 MARCH 2014</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-comment.png" alt="" style="margin-right:7px;" />17 COMMENTS</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-heart.png" alt="" style="margin-right:7px;" />13 LIKES</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-share.png" alt="" style="margin-right:7px;" />SHARE</a></td>
                                </tr>
                            </table>
                            <h4><a href="blog_single.html">THIS IS AN AWESOME BLOG POST TITLE</a></h4><br/>
                            <span>POSTED BY <a href="#">JOHN DOE</a> IN <a href="#">NEWS</a></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu dignissim erat, el placerat risus. Proin luctus tortor sit 
                            varius elementum. Duis ut condimentum risus, ac accumsan dui. Donec nibh elit, elementum dapibus massa sit amet, lorem
                            lacusfaucibus lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque habitant morbi tristique  
                            senectus et netus et malesuada fames ac turpis egestas. Curabitur at est eu ipsum auctor suscipit. [...]</p><br/>
                            <a class="buttonGrey" href="blog_single.html">READ MORE</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="blogPost">
                        <a href="blog_single.html" class="propertyImgLink"><img class="propertyImgRow" src="${contextPath}/resources/default/images/bathroom.jpg" alt="" /></a>
                        <div class="propertyContent row">
                            <div class="col-lg-12 rowText">
                            <table border="1" class="blogDetails">
                                <tr>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-date.png" alt="" style="margin-right:7px;" />12 MARCH 2014</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-comment.png" alt="" style="margin-right:7px;" />17 COMMENTS</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-heart.png" alt="" style="margin-right:7px;" />13 LIKES</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-share.png" alt="" style="margin-right:7px;" />SHARE</a></td>
                                </tr>
                            </table>
                            <h4><a href="blog_single.html">THIS IS AN AWESOME BLOG POST TITLE</a></h4><br/>
                            <span>POSTED BY <a href="#">JOHN DOE</a> IN <a href="#">NEWS</a></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu dignissim erat, el placerat risus. Proin luctus tortor sit 
                            varius elementum. Duis ut condimentum risus, ac accumsan dui. Donec nibh elit, elementum dapibus massa sit amet, lorem
                            lacusfaucibus lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque habitant morbi tristique  
                            senectus et netus et malesuada fames ac turpis egestas. Curabitur at est eu ipsum auctor suscipit. [...]</p><br/>
                            <a class="buttonGrey" href="blog_single.html">READ MORE</a>
                            </div>
                        </div>
                    </div>
                </div>
                <div class="col-lg-12 col-md-12">
                    <div class="blogPost">
                        <a href="blog_single.html" class="propertyImgLink"><img class="propertyImgRow" src="${contextPath}/resources/default/images/banner5.jpg" alt="" /></a>
                        <div class="propertyContent row">
                            <div class="col-lg-12 rowText">
                            <table border="1" class="blogDetails">
                                <tr>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-date.png" alt="" style="margin-right:7px;" />12 MARCH 2014</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-comment.png" alt="" style="margin-right:7px;" />17 COMMENTS</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-heart.png" alt="" style="margin-right:7px;" />13 LIKES</a></td>
                                <td><a href="#"><img src="${contextPath}/resources/default/images/icon-share.png" alt="" style="margin-right:7px;" />SHARE</a></td>
                                </tr>
                            </table>
                            <h4><a href="blog_single.html">THIS IS AN AWESOME BLOG POST TITLE</a></h4><br/>
                            <span>POSTED BY <a href="#">JOHN DOE</a> IN <a href="#">NEWS</a></span>
                            <p>Lorem ipsum dolor sit amet, consectetur adipiscing elit. Duis eu dignissim erat, el placerat risus. Proin luctus tortor sit 
                            varius elementum. Duis ut condimentum risus, ac accumsan dui. Donec nibh elit, elementum dapibus massa sit amet, lorem
                            lacusfaucibus lacus. Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque habitant morbi tristique  
                            senectus et netus et malesuada fames ac turpis egestas. Curabitur at est eu ipsum auctor suscipit. [...]</p><br/>
                            <a class="buttonGrey" href="blog_single.html">READ MORE</a> 
                            </div>
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
            </div><!-- end row -->
            </div><!-- end col -->
        
            <!-- START SIDEBAR -->
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
<!-- end main content -->

 <jsp:include page="/WEB-INF/view/common/contact.jsp"></jsp:include>

</jsp:body>
</defaultTemplate:defaultDecorator>
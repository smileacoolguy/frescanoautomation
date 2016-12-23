
<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>

 <!-- start recent posts widget -->
   <h3>RECENT POSTS</h3>
   <div class="divider"></div>
   <div class="recentPosts sidebarWidget">
       <h4><a href="#">AWESOME DREAM HOUSE IN A GREAT LOCATION</a></h4>
       <a href="#">READ MORE</a>
       <p class="date">Feb 5, 2014</p>
       <div style="clear:both;"></div>
       <div class="divider thin"></div>
       <h4><a href="#">AWESOME DREAM HOUSE IN A GREAT LOCATION</a></h4>
       <a href="#">READ MORE</a>
       <p class="date">Feb 5, 2014</p>
       <div style="clear:both;"></div>
       <div class="divider thin"></div>
       <h4><a href="#">AWESOME DREAM HOUSE IN A GREAT LOCATION</a></h4>
       <a href="#">READ MORE</a>
       <p class="date">Feb 5, 2014</p>
       <div style="clear:both;"></div>
   </div>
   <!-- end recent posts widget -->
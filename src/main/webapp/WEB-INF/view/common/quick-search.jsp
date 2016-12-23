 <%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<%@taglib prefix="defaultTemplate" tagdir="/WEB-INF/tags"%>
 
 
 <!-- start quick search widget -->
  <h3>QUICK SEARCH</h3>
  <div class="divider"></div>
  <div class="filterContent defaultTab sidebarWidget">
      <form method="post" action="#">
          <div class="row">
              <div class="col-lg-12 col-md-12 col-sm-6">
                  <div class="formBlock select">
                  <label for="propertyType">Property Type</label><br/>
                  <select name="property type" id="propertyType" class="formDropdown">
                      <option value="">Any</option>
                      <option value="Country2">Family Home</option>
                      <option value="Country3">Apartment</option>
                      <option value="Country4">Condo</option>
                      <option value="Country5">Villa</option>
                  </select>
                  </div>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-6">
                  <div class="formBlock select">
                  <label for="location">Location</label><br/>
                  <select name="location" id="location" class="formDropdown">
                      <option value="">Any</option>
                      <option value="Country2">Option 1</option>
                      <option value="Country3">Option 2</option>
                      <option value="Country4">Option 3</option>
                      <option value="Country5">Option 4</option>
                  </select>
                  </div>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-6">
                  <div class="formBlock select">
                  <label for="price">Price Range</label><br/>
                  <select name="price" id="price" class="formDropdown">
                      <option value="">Any</option>
                      <option value="Country2">Option 1</option>
                      <option value="Country3">Option 2</option>
                      <option value="Country4">Option 3</option>
                      <option value="Country5">Option 4</option>
                  </select>
                  </div>
              </div>
              <div class="col-lg-12 col-md-12 col-sm-6">
                  <div class="formBlock">
                      <input class="buttonColor" type="submit" value="FIND PROPERTIES" style="margin-top:24px;">
                  </div>
              </div>
              <div style="clear:both;"></div>
          </div> 
      </form>
  </div>
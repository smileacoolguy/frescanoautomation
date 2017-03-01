<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
    <title>Nextory_Auto</title>
</head>
<body>

Nextory_Auto


<br/><br/>
   <a href="${contextPath}/run_testNG">Loading home TestNG</a><br/>
     <a href="${contextPath}/login_testNG">Login TestNG</a><br/>
     <a href="${contextPath}/Sampleismail_testNG">Login TestNG sample ismail</a><br/>
     <pre>Choose the browser, Please select ONLY 1 below </pre>
     <a href="${contextPath}/setfirefoxbrowser" >Run Test with FIREFOX </a>  &nbsp;
     <a href="${contextPath}/setgooglebrowser" >Run Test with GOOGLE CHROME </a>  &nbsp;
     <a href="${contextPath}/setphantombrowser" >Run Test with PHANTOM </a>  &nbsp;
     
     <br/>
     <pre>Choose the subscription, Please select ONLY 1 below </pre>
     <a href="${contextPath}/setsubscriptiontypebase" >Run Test with subscription type: BASE </a> &nbsp;
     <a href="${contextPath}/setsubscriptiontypestandard" >Run Test with subscription type: STANDARD</a>  &nbsp;
     <a href="${contextPath}/setsubscriptiontypepremium" >Run Test with  subscription type: PREMIUM</a>  &nbsp;
     
     <br/>
     <p>Test Data: Run Shell script in acceptance before clicking below link 
     Copy this command run on acceptance "bash -x /home/acpt/test/campaignactivemember.sh 1>/home/acpt/test/cam.out 2>/home/acpt/test/cam.err" </p>
     <a href="${contextPath}/campaignredeemmember" target="_blank">Run test for Campaign redeem</a><br/>
     <span> ${str}</span>
</body>

</html>


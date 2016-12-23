<%@ page pageEncoding="ISO-8859-1"  contentType="text/html; charset=UTF-8" %>
<%@taglib uri="http://www.springframework.org/tags" prefix="spring"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="f" uri="http://java.sun.com/jsp/jstl/fmt"%>
<%@ taglib prefix="fn" uri="http://java.sun.com/jsp/jstl/functions" %>
<c:set var="contextPath" value="${pageContext.request.contextPath}"/>
<!DOCTYPE html>
<head>
    <title>Home</title>
</head>
<body>
<br/><br/>
   <a href="${contextPath}/run_testNG">Loading home TestNG</a><br/>
     <a href="${contextPath}/login_testNG">Login TestNG</a><br/>
     <a href="${contextPath}/Sampleismail_testNG">Login TestNG sample ismail</a>
     <span> ${str}</span>
</body>

</html>


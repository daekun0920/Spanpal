<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spanpal</title>
<%@include file="/resources/css/common.css" %>
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
<%@include file="/WEB-INF/views/header/header.jsp" %>
<div class="bdy-cont">
	${vo.first_name };
	${vo.gender };
	${vo.email_su };
	${vo.birthday };
</div>
<%@include file="/WEB-INF/views/footer/footer.jsp" %>
</body>
</html>
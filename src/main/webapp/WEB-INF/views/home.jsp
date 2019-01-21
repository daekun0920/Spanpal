<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Spanpal</title>
<%@include file="/resources/css/common.css"%>
<link rel="stylesheet"
	href="https://maxcdn.bootstrapcdn.com/bootstrap/3.3.2/css/bootstrap.min.css">
</head>
<body>
	<%@include file="/WEB-INF/views/header/header.jsp"%>

	<div class="bdy-cont">
		<table>
			<tr>
				<td style="width:70%;">
					Spanpal is to find your new friends and explore each others
					culture! On InterPals, a pen pal is more than just a friend for
					letter writing! People in our community connect with native
					speakers for language practice, meet friends for cultural exchange
					and find travel buddies.
				</td>
				<td style="width:27%;">
					<div class="sign-up div-middle">
						<div class="div-middle">
							Meet new people now!
						</div>
						<br>
						<div style="text-align:right;margin:0 auto;display:inline-block;">
							First Name : <label></label><input>
							<br>
							<br>
							Email : <label></label><input>
							<br>
							<br>
							Birthday : <input type="date">
							<br>
							<br>
							I am <input type="radio"> Female <input type="radio"> Male
						</div>
						<div class="text-center"> 
							<button class="btn btn-info sign-in">Sign In</button>
						</div>
					</div>
				</td>
			</tr>
		</table>
		<div>
			Currently Online Users
		</div>
		<div class="text-center">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
		</div>
		
		<div>
			New users
		</div>
		<div class="text-center">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
			<img class="smp-img" src="/resources/img/LogoMakr_1WpWIr.png" alt="..." class="img-rounded">
		</div>
	</div>
	
	<%@include file="/WEB-INF/views/footer/footer.jsp"%>
</body>
</html>
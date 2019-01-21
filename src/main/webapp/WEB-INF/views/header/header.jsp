<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="header" style="position: relative;">
	<img class="logo" src="resources/img/LogoMakr_1WpWIr.png">
	<table class="menu_tbl">
		<tr>
			<td>
				<label for="email">Email</label> <br><input id="email" style="margin-right:10px;">
			</td>
			<td>
				<label for="pw">Password</label> <br><input id="pw">
			</td>
			<td>
				<button class="btn btn-info sign-in">Sign In</button>
			</td>
		</tr>
	</table>
</div>
<div class="sub-header">
	<nav>
		<ul>
			<li>Home</li>
			<li>Search</li>
			<li>Online</li>
			<c:if
				test="${sessionScope.user_id != null && sessionScope.user_id != ''}">
				<li>Messages</li>
			</c:if>
		</ul>
	</nav>
</div>
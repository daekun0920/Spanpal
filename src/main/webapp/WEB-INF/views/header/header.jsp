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
			<li onclick="location.href='/'">Home</li>
			<li onclick="location.href='/search.do'">Search</li>
			<li onclick="location.href='/online.do'">Online</li>
			<li onclick="location.href='/messages.do'">Messages</li>
		</ul>
	</nav>
</div>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<div class="header" style="position: relative;">
	<img class="logo" src="resources/img/LogoMakr_1WpWIr.png">
	<table class="menu_tbl">
		<c:if
			test="${sessionScope.user_id == null || sessionScope.user_id == ''}">
			<tr>
				<td><label for="email">Email</label> <br> <input
					id="user_email" style="margin-right: 10px;"></td>
				<td><label for="pw">Password</label> <br> <input
					id="user_pw"></td>
				<td>
					<button class="btn btn-info sign-in" onclick="signIn();">Sign
						In</button>

				</td>
			</tr>
		</c:if>
		<c:if
			test="${sessionScope.user_id != null && sessionScope.user_id != ''}">
			<tr>
				<td>Welcome <c:out value="${sessionScope.user_id } !" />
				</td>
			</tr>
			<tr>
				<td class="text-right">
					<button class="btn btn-danger sign-in" onclick="logOut();">Log
						Out</button>
				</td>
			</tr>
		</c:if>
	</table>
</div>
<div class="sub-header">
	<nav>
		<ul>
			<li onclick="location.href='/'">Home</li>
			<li onclick="location.href='/search.do'">Search</li>
			<li onclick="location.href='/online.do'">Online</li>
			<li onclick="location.href='/messages.do'">Friends</li>
			<li onclick="location.href='/messages.do'">Messages</li>
		</ul>
	</nav>
</div>
<script>
	function signIn() {
			$.ajax({
				url : "/signIn.do",
				type : "POST",
				data : {
					user_email : $("#user_email").val(),
					user_pw : $("#user_pw").val()
				},
				dataType : 'json',
				success : function(obj) {
					if (obj.result == true) {
						location.href = "/";
					} else {
						alert(obj.message);
					}
				},
				error : function(a, b, c) {
					console.log(a + "|" + b + "|" + c);
				}
			});
	}
	function logOut() {
		
	}
</script>

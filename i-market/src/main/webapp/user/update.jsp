<%@page import="com.main.model.WebMemberDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" isELIgnored="false"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
	<head>
		<title>Forty by HTML5 UP</title>
		<meta charset="UTF-8" />
		<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
		<link rel="stylesheet" href="assets/css/main.css" />		
	</head>
	<body style="text-align: center;">
	<%
		WebMemberDTO loginMember = (WebMemberDTO)session.getAttribute("loginMember");
	%>
		<!-- Wrapper -->
			<div id="wrapper">
				<!-- Menu -->
					<nav id="Update">	
						<ul class="actions vertical">
							<li><h5>회원정보수정</h5></li>
								<form action="Update" method="post" enctype="multipart/form-data">
									<li>접속한 ID : <%=loginMember.getUser_id() %></li> 
									<li><input type="password" name="user_pw" placeholder="PW를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="user_nick" value="<%=loginMember.getUser_nick() %>" placeholder="닉네임을 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="user_phone" value="<%=loginMember.getUser_phone() %>" placeholder="전화번호를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><input type="text" name="user_addr" value="<%=loginMember.getUser_addr() %>" placeholder="집주소를 입력하세요" style="width: 500px; margin: 0 auto;"></li>
									<li><h5 style="width: 500px; margin: 0 auto;">프로필 사진을 선택하세요</h5></li>
									<li><input type="file" name="user_profile" style="width: 500px; margin: 0 auto;" ></li>
									<li><input type="submit" value="JoinUs" class="button fit" style="width: 500px; margin: 0 auto;"></li>
								</form>
						</ul>
					</nav>			
			</div>
		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.scrolly.min.js"></script>
			<script src="assets/js/jquery.scrollex.min.js"></script>
			<script src="assets/js/skel.min.js"></script>
			<script src="assets/js/util.js"></script>
			<!--[if lte IE 8]><script src="assets/js/ie/respond.min.js"></script><![endif]-->
			<script src="assets/js/main.js"></script>
	</body>
</html>


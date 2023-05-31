<%@page import="com.smhrd.model.chat.t_chatroominfoDAO"%>
<%@page import="com.smhrd.model.chat.t_chatroominfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Forty by HTML5 UP</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<!--[if lte IE 8]><script src="assets/js/ie/html5shiv.js"></script><![endif]-->
<link rel="stylesheet" href="assetsBoard/css/main.css" />
<link rel="stylesheet" href="assetsBoard/css/board.css" />
<!--[if lte IE 9]><link rel="stylesheet" href="assets/css/ie9.css" /><![endif]-->
<!--[if lte IE 8]><link rel="stylesheet" href="assets/css/ie8.css" /><![endif]-->

</head>
<body>
	<!-- Q17. 게시글 목록 조회 기능 -->
	<!-- webboard 테이블에 있는 모든 게시글 출력
		 select * from webboard order by b_date desc -->
		 <%
		 String user_id = (String)session.getAttribute("user_id");
		 t_chatroominfoDTO dto = new t_chatroominfoDTO(user_id);
		 t_chatroominfoDAO dao = new t_chatroominfoDAO();
		 List<t_chatroominfoDTO> chat_list = dao.showChatRoom(dto);
		 // session.getAttribute(name)%>
	<!-- Q18. 게시글 목록 세부페이지 기능(제목을 클릭하면 세부페이지 BoardDetail.jsp로 이동)-->
	<div id="board">
		<table id="list">
			<tr>
				<td>번호</td>
				<td>제목</td>
				<td>채팅정보</td>
				<td>시간</td>
			</tr>
			<%for(int i = 0; i < chat_list.size(); i++) {%>
			<tr>	
				<td><%=i + 1%></td>
				<td><a href="Chat02.jsp?croom_idx=<%=chat_list.get(i).getCroom_idx() %>"><%=chat_list.get(i).getCroom_title() %></a></td>
				<td><%=chat_list.get(i).getCroom_content() %></td>
				<td><%=chat_list.get(i).getCroom_at() %></td>
			</tr>
			<%} %>
		</table>
		<%session.setAttribute("user_id", user_id);
		String croom_content= "croom_test";
		String croom_title= "croom_title";
		session.setAttribute("croom_content", croom_content);
		session.setAttribute("croom_title", croom_title);
			out.println(user_id);
		%>
		<a href="main.jsp"><button id="writer">홈으로가기</button></a> <a
			href="CreateChatService.do"><button id="writer">채팅보내기</button></a>
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
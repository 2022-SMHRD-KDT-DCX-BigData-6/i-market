
<%@page import="javax.websocket.Session"%>
<%@page import="com.smhrd.model.board.CommentInfoDAO"%>
<%@page import="com.smhrd.model.board.CommentInfoDTO"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="com.smhrd.model.board.BoardInfoDTO"%>
<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.board.BoardInfoDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>

<!DOCTYPE HTML>
<!--
	Dopetrope by HTML5 UP
	html5up.net | @ajlkn
	Free for personal and commercial use under the CCA 3.0 license (html5up.net/license)
-->
<html>
	<head>
		<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
		

	
	</head>
	<body class="right-sidebar is-preload">
	<%   String user_id = (String)session.getAttribute("user_id"); %>
		<div id="page-wrapper">

			<!-- Header -->
				<section id="header">

					<!-- Logo -->
						<h1><a href="boardController?pagebutton=1">BABY COMMUNITY</a></h1>

					<!-- Nav -->
						<nav id="nav">
				<ul>
					<li><a href="../main.jsp">홈</a></li>
					<li><a href="../item/itemListMain.jsp">전체보기</a>
						<ul>
							<li><a href="#">유아동용품</a></li>
							<li><a href="#">유아동잡화</a></li>
							<li><a href="#">유아동도서</a></li>
							<li><a href="#">완구/장난감/인형</a></li>
							<li><a href="#">유아동의류</a>
								<ul>
									<li><a href="#">남아의류</a></li>
									<li><a href="#">여아의류</a></li>

								</ul></li>
							<li><a href="#">기타</a></li>
						</ul></li>
				<li><a href=
				<%if (user_id != null) {%>
					<%="../item/uploadItemBoard.jsp"%>
				<%}else {%>
					<%= "../user/login.jsp"%>					
				<% } %>
					>판매하기</a></li>
					<li class="current"><a href="boardController?pagebutton=1">게시판</a></li>
					<li><a href="#">NEWS</a></li>
					<li><a href=
				<%if (user_id != null) {%>
					<%="../user/myPage.jsp"%>
				<%}else {%>
					<%= "../user/login.jsp"%>					
				<% } %>
					>마이페이지</a></li>
						<input type="text" placeholder="search" maxlength="40" class="sc-hMqMXs cLfdog" value="">
						<img src="./images/2be3c66fa47ccd5ece2a.png" class="sc-hMqMXs search" width="16" height="16" alt=" " />
				</ul>
			</nav>
				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div>
							<div class="col-8 col-12-medium">

								<%
	
	WebMemberDTO loginMember = (WebMemberDTO)session.getAttribute("loginMember");
	
	%>
	
	<%
    int b_idx =  Integer.parseInt(request.getParameter("board_idx"));
	BoardInfoDTO dto = new BoardInfoDTO(b_idx);
	BoardInfoDAO dao = new BoardInfoDAO();
	List<BoardInfoDTO> dtail_list= dao.showBoardDtail(dto);
    
	session.setAttribute("b_idx", b_idx);
	int cnt =0;
	
	if(request.getParameter("cnt")!=null){
		cnt =Integer.parseInt(request.getParameter("cnt"));
	}else{
		cnt=0;
	}
    %>
	
    
    
	<table border="1" class="details">
		<tr>
			<td colspan="3">제목</td>
		
		</tr>
		<tr>
			<td colspan="3"><%=dtail_list.get(0).getB_title() %></td>
		
		</tr>
		<tr>
			<td>작성자</td><td>닉네임</td><td>작성일</td><td>첨부파일</td>
		
		</tr>
		<tr>
			<td><%=dtail_list.get(0).getUser_id() %></td><td><%=dtail_list.get(0).getUser_nick() %></td><td><%=dtail_list.get(0).getUploaded_at() %></td><td><%=dtail_list.get(0).getB_file() %></td>
		
		</tr>
		<tr>
			<td colspan="3">내용</td>
		
		</tr>
		<tr>
			<td colspan="3" ><%=dtail_list.get(0).getB_content() %></td>
		
		</tr>
		
		

	</table>
	
	<%
	CommentInfoDTO cdto = new CommentInfoDTO(0, b_idx);
	CommentInfoDAO cdao = new CommentInfoDAO();
	List<CommentInfoDTO> comment_list = cdao.showComment(cdto); 
	%>
	
	
	
	
	<%if(loginMember != null){ %>
	<%if (loginMember.getUser_id().equals(dtail_list.get(0).getUser_id())){ %>
	<a href="boardUpdate.jsp"><button>게시글 수정</button></a>
	<a href="boardDelete.jsp"><button>게시글 삭제</button></a>
	<%if(cnt>0){%>
		<input type="button" id="like" value="게시글 추천" disabled="disabled" onclick="button1_click();" >
	
	<%}else{%>
		<input type="button" id="like" value="게시글 추천" onclick="button1_click();" >
	
	<%} %>
<!-- 	<a href="BoardSuggest"><button id="like" >게시글 추천</button></a> -->
	<%} %>
	<%} %>
	<a href="#"><button onclick="button2_click();">뒤로가기</button></a><br><br><br>
	
	

	<script type="text/javascript">
	function button2_click() {
		window.location.href="../boardController?pagebutton=1";
	}
	function button1_click() {
		window.location.href="../BoardSuggest";
	}
	
	
	</script>
	
	
	<h3>댓글</h3>
		<%for(int i=0;i < comment_list.size(); i++){ %>
	<table border="1">
		<tr>
			<td>작성자</td><td><%=comment_list.get(i).getUser_nick() %></td>
		</tr>
		<tr>
			<td colspan="2"><%=comment_list.get(i).getCmt_content() %></td>
		</tr>
		<tr>
			<td colspan="2"><%=comment_list.get(i).getUploaded_at() %></td>
		</tr>
	</table>
	<%if(loginMember != null){ %>
	<%if(loginMember.getUser_id().equals(comment_list.get(i).getUser_id())){ %>
		<a href="commentUpdate.jsp?cmt_idx=<%=comment_list.get(i).getCmt_idx() %>"><button>수정</button></a>
		<a href="../commentDeleteService?cmt_idx=<%=comment_list.get(i).getCmt_idx() %>" ><button onclick="return confirm('삭제하시겠습니까?');">삭제</button></a>
	<%} %>
	<%} %>
	<br>
		<%} %>
	<br><br><br>	
	<%if(loginMember != null){ %>
	<h5>댓글 작성하기</h5>
	<form action="../CommentService?board_idx=<%=b_idx %>" method="post">
	
	<table border="1">
		<tr>
			<td>작성자 닉네임</td>
		</tr>
		<tr>
			<td><%=loginMember.getUser_nick() %></td>
		</tr>
		<tr>
			<td><input type="text" placeholder="댓글을 작성해 주세요!" value="" name="cmt_content"></td>
		</tr>
		
		
	</table>
			<input type="submit" value="등록">
	</form>
	<%} %>

							</div>
						</div>
					</div>
				</section>

			<!-- Footer -->
				<section id="footer">
					<div class="container">
						<div class="row">
							<div class="col-8 col-12-medium">
								<section>
									<header>
										<h2>Blandit nisl adipiscing</h2>
									</header>
									<ul class="dates">
										<li>
											<span class="date">Jan <strong>27</strong></span>
											<h3><a href="#">Lorem dolor sit amet veroeros</a></h3>
											<p>Ipsum dolor sit amet veroeros consequat blandit ipsum phasellus lorem consequat etiam.</p>
										</li>
										<li>
											<span class="date">Jan <strong>23</strong></span>
											<h3><a href="#">Ipsum sed blandit nisl consequat</a></h3>
											<p>Blandit phasellus lorem ipsum dolor tempor sapien tortor hendrerit adipiscing feugiat lorem.</p>
										</li>
										<li>
											<span class="date">Jan <strong>15</strong></span>
											<h3><a href="#">Magna tempus lorem feugiat</a></h3>
											<p>Dolore consequat sed phasellus lorem sed etiam nullam dolor etiam sed amet sit consequat.</p>
										</li>
										<li>
											<span class="date">Jan <strong>12</strong></span>
											<h3><a href="#">Dolore tempus ipsum feugiat nulla</a></h3>
											<p>Feugiat lorem dolor sed nullam tempus lorem ipsum dolor sit amet nullam consequat.</p>
										</li>
										<li>
											<span class="date">Jan <strong>10</strong></span>
											<h3><a href="#">Blandit tempus aliquam?</a></h3>
											<p>Feugiat sed tempus blandit tempus adipiscing nisl lorem ipsum dolor sit amet dolore.</p>
										</li>
									</ul>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section>
									<header>
										<h2>What's this all about?</h2>
									</header>
									<a href="#" class="image featured"><img src="images/pic10.jpg" alt="" /></a>
									<p>
										This is <strong>Dopetrope</strong> a free, fully responsive HTML5 site template by
										<a href="http://twitter.com/ajlkn">AJ</a> for <a href="http://html5up.net/">HTML5 UP</a> It's released for free under
										the <a href="http://html5up.net/license/">Creative Commons Attribution</a> license so feel free to use it for any personal or commercial project &ndash; just don't forget to credit us!
									</p>
									<footer>
										<ul class="actions">
											<li><a href="#" class="button">Find out more</a></li>
										</ul>
									</footer>
								</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<section>
									<header>
										<h2>Tempus consequat</h2>
									</header>
									<ul class="divided">
										<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
										<li><a href="#">Sed et blandit consequat sed tlorem blandit</a></li>
										<li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
										<li><a href="#">Hendrerit tortor vitae mattis tempor sapien</a></li>
										<li><a href="#">Sem feugiat sapien id suscipit magna felis nec</a></li>
										<li><a href="#">Elit class aptent taciti sociosqu ad litora</a></li>
									</ul>
								</section>
							</div>
							<div class="col-4 col-6-medium col-12-small">
								<section>
									<header>
										<h2>Ipsum et phasellus</h2>
									</header>
									<ul class="divided">
										<li><a href="#">Lorem ipsum dolor sit amet sit veroeros</a></li>
										<li><a href="#">Sed et blandit consequat sed tlorem blandit</a></li>
										<li><a href="#">Adipiscing feugiat phasellus sed tempus</a></li>
										<li><a href="#">Hendrerit tortor vitae mattis tempor sapien</a></li>
										<li><a href="#">Sem feugiat sapien id suscipit magna felis nec</a></li>
										<li><a href="#">Elit class aptent taciti sociosqu ad litora</a></li>
									</ul>
								</section>
							</div>
							<div class="col-4 col-12-medium">
								<section>
									<header>
										<h2>Vitae tempor lorem</h2>
									</header>
									<ul class="social">
										<li><a class="icon brands fa-facebook-f" href="#"><span class="label">Facebook</span></a></li>
										<li><a class="icon brands fa-twitter" href="#"><span class="label">Twitter</span></a></li>
										<li><a class="icon brands fa-dribbble" href="#"><span class="label">Dribbble</span></a></li>
										<li><a class="icon brands fa-tumblr" href="#"><span class="label">Tumblr</span></a></li>
										<li><a class="icon brands fa-linkedin-in" href="#"><span class="label">LinkedIn</span></a></li>
									</ul>
									<ul class="contact">
										<li>
											<h3>Address</h3>
											<p>
												Untitled Incorporated<br />
												1234 Somewhere Road Suite<br />
												Nashville, TN 00000-0000
											</p>
										</li>
										<li>
											<h3>Mail</h3>
											<p><a href="#">someone@untitled.tld</a></p>
										</li>
										<li>
											<h3>Phone</h3>
											<p>(800) 000-0000</p>
										</li>
									</ul>
								</section>
							</div>
							<div class="col-12">

								<!-- Copyright -->
									<div id="copyright">
										<ul class="links">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
									</div>

							</div>
						</div>
					</div>
				</section>

		</div>

		<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>

	</body>
</html>
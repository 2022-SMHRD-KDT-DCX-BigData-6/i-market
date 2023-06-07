<%@page import="com.smhrd.model.board.CommentInfoDTO"%>
<%@page import="com.smhrd.model.board.CommentInfoDAO"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.smhrd.model.board.BoardInfoDAO"%>
<%@page import="com.smhrd.model.board.BoardInfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="assets/css/main.css" />

<!-- <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous"> -->
<meta charset="UTF-8">
<title>Insert title here</title>
<!-- CSS only -->

<style type="text/css">


</style>
</head>
<body class="right-sidebar is-preload">
<%
	String user_id = (String)session.getAttribute("user_id");
%>
	<div id="page-wrapper">
	
	<!-- Header -->
				<section id="header">

					<!-- Logo -->
						<h1><a href="#">BABY COMMUNITY</a></h1>

					<!-- Nav -->
						<nav id="nav">
				<ul>
					<li><a href="main.jsp">홈</a></li>
					<li><a href="item/itemListMain.jsp">전체보기</a>
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
					<%="item/uploadItemBoard.jsp"%>
				<%}else {%>
					<%= "user/login.jsp"%>					
				<% } %>
					>판매하기</a></li>
					<li class="current"><a href="./boardController?pagebutton=1">게시판</a></li>
					<li><a href="#">NEWS</a></li>
					<li><a href=
				<%if (user_id != null) {%>
					<%="user/myPage.jsp"%>
				<%}else {%>
					<%= "user/login.jsp"%>					
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
						<div >
							<div class="col-8 col-12-medium">
				
				
							<% ArrayList<BoardInfoDTO> board_list = (ArrayList<BoardInfoDTO>)request.getAttribute("board_list"); %>
							<%-- <%int boardPage = Integer.parseInt(request.getParameter("boardPage"));  %> --%>
							<%int boardPage = (int)request.getAttribute("boardPage"); %>
							
						
						<!-- 검색기능 -->
						<div >
								<div >
									<!-- <form method="post" name="search" action="BoardSearchService"> -->
										
											
												<p>&emsp;<%="검색조건" %>&nbsp;&nbsp;&#160;<select class="form-control" name="searchField">
														<option value="0" >선 택▼</option>
														<option value="board_title">제목</option>
														<option value="user_id">작성자</option>
												</select>
												&emsp;&emsp;키워드 &nbsp;&nbsp;&#160;<input type="text" class="form-control" id="search"
													placeholder="검색어 입력" name="searchText" maxlength="100">
												&emsp;&emsp;<button type="button" class="btn">검색</button>
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;&emsp;
												<a href="board/boardInput.jsp"><button>글작성하러가기</button></a></p><br>
											
						
										
									<!-- </form> -->
								</div>
							</div>
							<!-- jquery 검색 조건 -->
								
						
						<!-- 메인기능 -->
							<table border="1">
								<tr>
									<td style="color:blue">글번호</td>
									<td>제목(댓글수)</td>
									<td>작성자</td>
									<td>작성일</td>
									<td>추천</td>
									<td>조회수</td>
								</tr>
								<%if (board_list.size() >= (boardPage*10)){ %>
									<%for(int i=(boardPage*10)-10;i< boardPage*10  ;i++){ %>
									<tr>
										<td><%=i+1 %></td>
										<%CommentInfoDTO dto = new CommentInfoDTO(0, board_list.get(i).getB_idx());
							  				CommentInfoDAO dao = (CommentInfoDAO)new CommentInfoDAO();
							  				List<CommentInfoDTO> comment_count = dao.showComment(dto);%>
										<td><a
											href="BoardShowService?board_idx=<%=board_list.get(i).getB_idx()%>"><%=board_list.get(i).getB_title() %></a>(<%=comment_count.size()%>)</td>
										<td><%=board_list.get(i).getUser_nick() %></td>
										<td><%=board_list.get(i).getUploaded_at() %></td>
										<td><%=board_list.get(i).getB_likes() %></td>
										<td><%=board_list.get(i).getB_views() %></td>
									</tr>
										
									<%} %>
								<%} else{ %>
									<%for(int i=((boardPage*10) - 10);i< ((boardPage*10) - 10 )+ (board_list.size() % 10)  ;i++){ %>
									<tr>
										<td><%=i+1 %></td>
										<%CommentInfoDTO dto = new CommentInfoDTO(0, board_list.get(i).getB_idx());
							  				CommentInfoDAO dao = (CommentInfoDAO)new CommentInfoDAO();
							  				List<CommentInfoDTO> comment_count = dao.showComment(dto);%>
										<td><a href="BoardShowService?board_idx=<%=board_list.get(i).getB_idx()%>"><%=board_list.get(i).getB_title() %></a>(<%=comment_count.size() %>)</td>
										<td><%=board_list.get(i).getUser_nick() %></td>
										<td><%=board_list.get(i).getUploaded_at() %></td>
										<td><%=board_list.get(i).getB_likes() %></td>
										<td><%=board_list.get(i).getB_views() %></td>
									</tr>
										
									<%} %>	
								<%} %>
							</table>
								
								<!-- <nav aria-label="...">
								  <ul class="pagination">
								    <li class="page-item disabled">
								      <a class="page-link">Previous</a>
								    </li>
								    <li class="page-item"><a class="page-link" href="#">1</a></li>
								    <li class="page-item active" aria-current="page">
								      <a class="page-link" href="#">2</a>
								    </li>
								    <li class="page-item"><a class="page-link" href="#">3</a></li>
								    <li class="page-item">
								      <a class="page-link" href="#">Next</a>
								    </li>
								  </ul>
								</nav> -->
								
								
								<% int totalPage = ((board_list.size()-1) / 10) + 1; %>
								
								<%if (totalPage<= 5){ %>
									<%for(int i=1;i<=totalPage;i++){ %>
									<a href="boardController?pagebutton=<%=i %>"><button type="button" id="pagebutton"><%=i %></button></a>
									<%} %>
								<%} else {%>
									<%if(boardPage > 5){ %>
									<a href="boardController?pagebutton=<%=boardPage - ((boardPage-1) % 5) -5 %>"><button type="button" id="pagebutton">back</button></a>
									<%} %>
									<%if(totalPage >= (((boardPage -1) / 5) + 1) * 5){ %>
										
										<%for(int i=boardPage - (boardPage-1 % 5)  ;i<=boardPage - (boardPage-1 % 5) + 4;i++){ %>
										<a href="boardController?pagebutton=<%=i %>"><button type="button" id="pagebutton"><%=i %></button></a>
										<%} %>
									<%} else{%>	
										<%for(int i=boardPage - (boardPage % 5) + 1;i<=totalPage;i++){ %>
										<a href="boardController?pagebutton=<%=i %>"><button type="button" id="pagebutton"><%=i %></button></a>
										<%} %>
										
									<%} %>
									<%if(boardPage < totalPage - ((totalPage -1) % 5) ){ %>
									<a href="boardController?pagebutton=<%=boardPage - (boardPage-1 % 5) +5 %>"><button type="button" id="pagebutton">next</button></a>
									<%} %>
								<%} %>
							
								
							
									
								
		
							</div>
						</div>
					</div>
				</section>		
		
		
		<!-- Footer -->
				<section id="footer">
					<div class="container" align="center">
						<div class="row">
							<div class="col-4 col-12-medium">
							<section>
								<header>
									<h2>Vitae tempor lorem</h2>
								</header>
								<ul class="social">
									<li><a class="fa fa-facebook-f" href="#"><span
											class="label"></span></a></li>
									<li><a class="fa fa-twitter" href="#"><span
											class="label"></span></a></li>
									<li><a class="fa fa-instagram" href="#"><span
											class="label"></span></a></li>
									<li><a class="fa fa-google" href="#"><span
											class="label"></span></a></li>
								</ul>
								<ul class="contact">
									<li>
										<h3>Address</h3>
										<p>
											광주 서구 경열로 20 3,4층
										</p>
									</li>
									<li>
										<h3>Mail</h3>
										<p>
											<p>smhrd@smhrd.or.kr</p>
										</p>
									</li>
									<li>
										<h3>Phone</h3>
										<p>062)655-3510</p>
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
	
	
	
<script type="text/javascript" src="assets/js/jquery-3.7.0.js"></script>
<script type="text/javascript">
$(".btn").on("click",function(){
var search = $("#search").val();
var field = $("select[name=searchField]").val();
console.log(search);
 if(search==="" || field==="0"){
	window.location.href='boardController?pagebutton=1';
}else{
/* window.location.href=http://localhost:8081/i-market/boardController?pagebutton=1; */
window.location.href='http://localhost:8081/i-market3/BoardSearchService?searchText='+search+'&searchField='+field;
}
});
</script>	
							

	
	<!-- Scripts -->
			<script src="assets/js/jquery.min.js"></script>
			<script src="assets/js/jquery.dropotron.min.js"></script>
			<script src="assets/js/browser.min.js"></script>
			<script src="assets/js/breakpoints.min.js"></script>
			<script src="assets/js/util.js"></script>
			<script src="assets/js/main.js"></script>
</body>
</html>
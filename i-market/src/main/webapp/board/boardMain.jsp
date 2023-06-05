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
	<div id="page-wrapper">
	
	<!-- Header -->
				<section id="header">

					<!-- Logo -->
						<h1><a href="index.html">BABY COMMUNITY</a></h1>

					<!-- Nav -->
						<nav id="nav">
							<ul>
								<li><a href="index.html">Home</a></li>
								<li>
									<a href="#">Dropdown</a>
									<ul>
										<li><a href="#">Lorem ipsum dolor</a></li>
										<li><a href="#">Magna phasellus</a></li>
										<li><a href="#">Etiam dolore nisl</a></li>
										<li>
											<a href="#">Phasellus consequat</a>
											<ul>
												<li><a href="#">Magna phasellus</a></li>
												<li><a href="#">Etiam dolore nisl</a></li>
												<li><a href="#">Veroeros feugiat</a></li>
												<li><a href="#">Nisl sed aliquam</a></li>
												<li><a href="#">Dolore adipiscing</a></li>
											</ul>
										</li>
										<li><a href="#">Veroeros feugiat</a></li>
									</ul>
								</li>
								<li><a href="left-sidebar.html">Left Sidebar</a></li>
								<li class="current"><a href="./boardController?pagebutton=1">게시판</a></li>
								<li><a href="no-sidebar.html">No Sidebar</a></li>
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
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
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">
		<title>Dopetrope by HTML5 UP</title>
		<meta charset="utf-8" />
		<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
		<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">

/* Button */
	
	input[type="submit"],
	input[type="reset"],
	button,
	.button {
		-webkit-appearance: none;
		display: inline-block;
		text-decoration: none;
		cursor: pointer;
		border: 0;
		border-radius: 5px;
		background:	#217214a3;
		color: 	#FFf;
		font-weight: 700;
		outline: 0;
		font-size: 1.1em;
		padding: 0.4em 1em 0.4em 1em;
		text-align: center;
		-moz-transition: background-color .25s ease-in-out;
		-webkit-transition: background-color .25s ease-in-out;
		-ms-transition: background-color .25s ease-in-out;
		transition: background-color .25s ease-in-out;
		font-family:'Hi Melody', cursive;
	}
	
	input[type="reset"] {
		    line-height: 1.25em
	}
	
	input[type="button"]{
	
	-webkit-appearance: none;
		display: inline-block;
		text-decoration: none;
		cursor: pointer;
		border: 0;
		border-radius: 5px;
		background:	rgb(235, 225, 15);
		color: 	#FFf;
		font-weight: 700;
		outline: 0;
		font-size: 1.1em;
		padding: 0.4em 1em 0.4em 1em;
		height: 1.3em
		text-align: center;
		-moz-transition: background-color .25s ease-in-out;
		-webkit-transition: background-color .25s ease-in-out;
		-ms-transition: background-color .25s ease-in-out;
		transition: background-color .25s ease-in-out;
		font-family:'Hi Melody', cursive;
	}
	
	button:hover,
		.button:hover
		{
		
		background: rgb(235, 225, 15);
		}

		input[type="button"]:hover,
		input[type="submit"]:hover,
		input[type="reset"]:hover
		 {
			background: rgb(235, 225, 15);
		}

		input[type="button"]:active,
		input[type="submit"]:active,
		input[type="reset"]:active,
		button:active,
		.button:active {
			background: rgb(235, 225, 15);
		}
		
		input[type="button"].alt:hover,
			input[type="submit"].alt:hover,
			input[type="reset"].alt:hover{
			
			background: #217214a3;
			
			}

		input[type="button"].alt,
		input[type="submit"].alt,
		input[type="reset"].alt,
		button.alt,
		.button.alt {
			background:#f97777;
		}
			button.alt:hover,
			.button.alt:hover {
				background: rgb(235, 225, 15);
			}

		input[type="button"].icon:before,
		input[type="submit"].icon:before,
		input[type="reset"].icon:before,
		button.icon:before,
		.button.icon:before {
			opacity: 0.35;
			position: relative;
			top: 0.05em;
			margin-right: 0.75em;
		}

		input[type="button"].large,
		input[type="submit"].large,
		input[type="reset"].large,
		button.large,
		.button.large {
			font-size: 1.5em;
			padding: 0.5em 1em 0.5em 1em;
		}

/*@font-face {
    font-family: 'Dovemayo_gothic';
    src: url('https://cdn.jsdelivr.net/gh/projectnoonnu/noonfonts_2302@1.1/Dovemayo_gothic.woff2') format('woff2');
    font-weight: normal;
    font-style: normal;
}
*/
@font-face {
    font-family: 'Hi Melody', cursive;
    src: url('https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap');
    font-weight: normal;
    font-style: normal;
}

body{

/* font-family: 'Hi Melody', cursive;*/
  background: var(--background);
  color: var(--color);
}
.index_01{

	font-family:'Hi Melody', cursive;
	color:#f2ec1d;
	font-size: 80px;
	font-style: normal;
	font-weight: 100;
	text-shadow: 1px 0 10px #110f10;

}

#nav > ul > li {
	position:relative; 
	padding-left: 15px;
	padding-right: 15px;
	
}

#nav > ul > li.current > a {
    background: #217214a3;
    color: #fff !important;
    font-weight: 700;
}

#footer a {
			color: #fff;
		}

html, body, div, span, applet, object,
iframe, h2, h3, h4, h5, h6, p, blockquote,
pre, a, abbr, acronym, address, big, cite,
code, del, dfn, em, img, ins, kbd, q, s, samp,
small, strike, strong, sub, sup, tt, var, b,
u, i, center, dl, dt, dd, ol, ul, li, fieldset,
form, label, legend, table, caption, tbody,
tfoot, thead, tr, th, td, article, aside,
canvas, details, embed, figure, figcaption,
footer, header, hgroup, menu, nav, output, ruby,
section, summary, time, mark, audio, video {

	font-family:'Hi Melody', cursive;
}
.b_update {
	width: 120%;
		margin-left: 120px;
}

.back {
margin-left: 120px;
}
.td_01{
	width: 60px;
}
.td_02 {
	width: 80%;
}
</style>
	</head>
	<body class="right-sidebar is-preload">
		<div id="page-wrapper">
<%   String user_id = (String)session.getAttribute("user_id");  %>
			<!-- Header -->
				<section id="header">

			<!-- Logo -->
			<div>
			<h1 >
				<a class="index_01" href="main.jsp">아이 i 마켓</a>
			</h1>
			</div>
			
			<div>
			<span>유아용품전용 중고거래 플랫폼</span>
			</div>

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
					<%="uploadItemBoard.jsp"%>
				<%}else {%>
					<%= "../user/login.jsp"%>					
				<% } %>
					>판매하기</a></li>
					<li class="current"><a href="boardController?pagebutton=1">게시판</a></li>
					<li><a href="#">NEWS</a></li>
					<li><a href="myPage.jsp">마이페이지</a></li>
				</ul>
			</nav>

				</section>

			<!-- Main -->
				<section id="main">
					<div class="container">
						<div class="row">
							<div class="col-8 col-12-medium">

							<%
	
	int b_idx = (int)session.getAttribute("b_idx");
	BoardInfoDTO dto = new BoardInfoDTO(b_idx);
	BoardInfoDAO dao = new BoardInfoDAO();
	List<BoardInfoDTO> dtail_list= dao.showBoardDtail(dto);
	%>
	
	
	
	<form action="../BoardUpdateService" method="post" enctype="multipart/form-data">
	
	<table border="1" class="b_update">
		<tr>
			<td>제목</td>
		
		</tr>
		<tr>
			<td><input type="text" name="b_title" value="<%=dtail_list.get(0).getB_title() %>"></td>
		
		</tr>
		<tr>
			<td>작성자</td><td class="td_01">닉네임</td><td class="td_01">작성일</td>
		
		</tr>
		<tr>
			<td><%=dtail_list.get(0).getUser_id() %></td><td><%=dtail_list.get(0).getUser_nick() %></td><td><%=dtail_list.get(0).getUploaded_at() %></td>
		
		</tr>
		<tr>
			<td>내용</td>
		
		</tr>
		<tr>
			<td><input type="text" name="b_content" value="<%=dtail_list.get(0).getB_content() %>"></td>
		
		</tr>
		<tr>
			<td>첨부파일</td>
		
		</tr>
		<tr>
			<td class="td_02" colspan="1"><input type="file" name="b_file">파일 선택 필수.</td>
		
		</tr>
		

	</table>
	<div class="back">
	<a href="../BoardUpdateService">
	<button>수정완료</button></a>
	</form>
	<input type="reset" value="초기화">
	<a href="boardDetail.jsp?board_idx=<%=b_idx%>"><button>뒤로가기</button></a>
	</div>
							</div>
						</div>
					</div>
				</section>

								<!-- Copyright -->
									<div id="copyright">
										<ul class="links">
											<li>&copy; Untitled. All rights reserved.</li><li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
										</ul>
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
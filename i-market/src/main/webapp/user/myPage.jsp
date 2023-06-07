<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="com.main.model.WebMemberDAO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">




<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport" content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/main.css" />
<style type="text/css">
	.profile1 {
		text-align:center; 
    	width:120px;
    	height:120px;
		border-radius: 70%;
		overflow: hidden;
	}
	 .profile3 {
	 
		max-width:150px;
    	max-height:150px;
	}
	
	input[type="submit"],
	button,
	.button  {
		padding : 0.05em 0.5em 0.05em 0.5em;
		
	}
	
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
		text-align: center;
		-moz-transition: background-color .25s ease-in-out;
		-webkit-transition: background-color .25s ease-in-out;
		-ms-transition: background-color .25s ease-in-out;
		transition: background-color .25s ease-in-out;
	
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
			background: #217214a3;
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
  font-family: 'Hi Melody', cursive;
  background: var(--background);
  color: var(--color);
}
.index_01{

	font-family: 'Hi Melody', cursive;
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
	
	
	
	
</style>
</head>
<body class="no-sidebar is-preload">
	<%
		String user_id = (String)session.getAttribute("user_id");
		WebMemberDTO dto = new WebMemberDTO(user_id);
		WebMemberDAO dao = new WebMemberDAO();
		WebMemberDTO profile=  dao.selectMeMember(dto);
		System.out.print(profile);
	%>
			<div id="page-wrapper">




		<!-- Header -->
		<section id="header">

			<!-- Logo -->
			<div>
			<h1 >
				<a class="index_01" style="font-family: 'Hi Melody', cursive;" href="main.jsp">아이 i 마켓</a>
			</h1>
			</div>
			
			<div>
			<span>유아용품전용 중고거래 플랫폼</span>
			</div>

			<!-- Nav -->
			<nav id="nav">
				<ul>
					<li class="current"><a href="main.jsp">홈</a></li>
					<li><a href="#">전체보기</a>
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
					<li><a href="left-sidebar.html">판매하기</a></li>
					<li><a href="right-sidebar.html">게시판</a></li>
					<li><a href="no-sidebar.html">NEWS</a></li>
					<li><a href="myPage.jsp">마이페이지</a></li>
						<input type="text" placeholder="search" maxlength="40" class="sc-hMqMXs cLfdog" value="">
						<img src="./images/2be3c66fa47ccd5ece2a.png" class="sc-hMqMXs search" width="16" height="16" alt=" " />
				</ul>
			</nav>


			<!-- Main -->
				<section id="main">
					<div class="container">
					<section>
					<div class="profile1" style="float: left; margin-right:10px">
					<%if(profile.getUser_profile() == null){ %>
						<img src="../images/basic_profile.png" class="profile3" alt=""/>
					<%}else { %>
						<img src= "../file/<%=profile.getUser_profile() %>" class="profile3" alt="" style="width:350px; height:350px;"/>
					<%} %>
					</div>
					</section>
					<div style="">
					<section>
					<div style="padding-bottom: 45px;padding-left:190px;"><font size = 10><%=profile.getUser_id() %></font></div>
					<div style="padding-bottom: 45px;padding-left:190px;"><font size = 10><%=profile.getUser_nick() %></font></div>
					<div style="padding-bottom: 45px;padding-left: 190px;"><font size = 10><%=profile.getUser_phone() %></font></div>
					<div style="padding-bottom: 45px; padding-left: 190px;"><font size = 10><%=profile.getUser_addr() %></font></div>
					</section>
					</div>
					</div>
					<div style="float: left; margin-left: 600px;">
						<!-- 쿼리스트링 방식 : url?name=value&name=value -->
						<a href="update.jsp?id=<%=profile.getUser_id()  %>" class="button next scrolly">
						<input type="submit"  id="button1" value="개인정보수정" class="button fit">
						</a>
					</div>
					<div style=" padding-left: 900px;">	
						<a href="main.jsp" class="button next scrolly">
						<input type="submit"  id="button2" value="되돌아가기" class="button fit">
						</a>
					</div>
					<div style="clear:both"></div>
				</section>

		
								
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

</body>
</html>
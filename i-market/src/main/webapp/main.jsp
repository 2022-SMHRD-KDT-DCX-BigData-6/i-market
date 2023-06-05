<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="com.main.model.WebMemberDTO" %>


<!DOCTYPE html>

<html>
<head>

<link rel="preconnect" href="https://fonts.googleapis.com">
<link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
<link href="https://fonts.googleapis.com/css2?family=Hi+Melody&display=swap" rel="stylesheet">



<title>i-market</title>
<script src="https://kit.fontawesome.com/7b42c1f2dd.js" ></script>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="assets/css/main.css" />



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





</style>

</head>



<body class="homepage is-preload" style="font-family: 'Hi Melody', cursive;">





<%
   // session값 가져오기
   WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
   if (loginMember != null) {
      System.out.print(loginMember.getUser_id());
   }
   %>






	<div class="row">
		<div class="col-12" align="right">
		<%if(loginMember==null) { %>
		<a href="join.jsp">
				<input type="button" class="btn float-right" value="Join">
		</a>
		<a href="login.jsp">
			<input type="button" class="btn float-right" value="Login">
			</a>
		<%} else { 
				if(loginMember.getUser_id().equals("admin")){%>
				<a href="select.jsp"><input type="button" class="btn float-right" value="전체회원정보"></a>
				<%} %>
			<a href="Logout"><input type="button" class="btn float-right" value="Logout"></a>
			<%} %>
			
		</div>
	</div>



 
	<div id="page-wrapper">




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
					<li><a href="board/boardMain.jsp">게시판</a></li>
					<li><a href="no-sidebar.html">NEWS</a></li>
					<li><a href="myPage.jsp">마이페이지</a></li>
						<input type="text" placeholder="search" maxlength="40" class="sc-hMqMXs cLfdog" value="">
						<img src="./images/2be3c66fa47ccd5ece2a.png" class="sc-hMqMXs search" width="16" height="16" alt=" " />
				</ul>
			</nav>

			<!-- Banner -->
			
			
			<section id="banner" style="padding:100px">	
			<header>
					<h2 class="f">우리아이 중고 직거래 마켓</h2>
					<p>중고 거래부터 동네 정보까지, 이웃과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요.</p>
				</header>
			</section>


			<!-- Intro -->
			<section id="intro" class="container">
				<div class="row">
					<div class="col-4 col-12-medium">
						<section class="first">
						
							<header>
							<img alt="" class="icon solid featured" src="images/이미지8.jpg" >
								<h2>유아동 잡화</h2>
							</header>
							<p>Nisl amet dolor sit ipsum veroeros sed blandit consequat
								veroeros et magna tempus.</p>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="middle">
							<header>
							<img alt="" class="icon featured" src="images/이미지9.jpg" >
								<h2>유아동 도서</h2>
							</header>
							<p>Nisl amet dolor sit ipsum veroeros sed blandit consequat
								veroeros et magna tempus.</p>
						</section>
					</div>
					<div class="col-4 col-12-medium">
						<section class="last">
							<header>
					<img alt="" class="icon featured after" src="images/이미지7.jpg" >
								<h2>완구/장난감/인형</h2>
							</header>
							<p>Nisl amet dolor sit ipsum veroeros sed blandit consequat
								veroeros et magna tempus.</p>
						</section>
					</div>
				</div>
				<footer>
					<ul class="actions">
						<li><a href="#" class="button large">전체상품보기</a></li>
					</ul>
				</footer>
			</section>

			<!-- Main -->
			<section id="main">
				<div class="container">
						<div class="col-12">

							<!-- Portfolio -->
							<section>
								<header class="major">
									<h2>가장 많이 본 상품</h2>
								</header>
								<div class="row">
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic02.jpg" alt="" /></a>
											<header>
												<h3>Ipsum feugiat et dolor</h3>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed amet
												blandit consequat veroeros lorem blandit adipiscing et
												feugiat phasellus tempus dolore ipsum lorem dolore.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">상품보기</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic03.jpg" alt="" /></a>
											<header>
												<h3>Sed etiam lorem nulla</h3>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed amet
												blandit consequat veroeros lorem blandit adipiscing et
												feugiat phasellus tempus dolore ipsum lorem dolore.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">상품보기</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic04.jpg" alt="" /></a>
											<header>
												<h3>Consequat et tempus</h3>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed amet
												blandit consequat veroeros lorem blandit adipiscing et
												feugiat phasellus tempus dolore ipsum lorem dolore.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">상품보기</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic05.jpg" alt="" /></a>
											<header>
												<h3>Blandit sed adipiscing</h3>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed amet
												blandit consequat veroeros lorem blandit adipiscing et
												feugiat phasellus tempus dolore ipsum lorem dolore.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">상품보기</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic06.jpg" alt="" /></a>
											<header>
												<h3>Etiam nisl consequat</h3>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed amet
												blandit consequat veroeros lorem blandit adipiscing et
												feugiat phasellus tempus dolore ipsum lorem dolore.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">상품보기</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-4 col-6-medium col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic07.jpg" alt="" /></a>
											<header>
												<h3>Dolore nisl feugiat</h3>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed amet
												blandit consequat veroeros lorem blandit adipiscing et
												feugiat phasellus tempus dolore ipsum lorem dolore.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button alt">상품보기</a></li>
												</ul>
											</footer>
										</section>
									</div>
								</div>
							</section>

						</div>
						<div class="col-12">

							<!-- Blog -->
							<section>
								<header class="major">
									<h2>추천 게시글</h2>
								</header>
								<div class="row">
									<div class="col-6 col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic08.jpg" alt="" /></a>
											<header>
												<h3>Magna tempus consequat</h3>
												<p>Posted 45 minutes ago</p>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed et blandit
												consequat sed veroeros lorem et blandit adipiscing feugiat
												phasellus tempus hendrerit, tortor vitae mattis tempor,
												sapien sem feugiat sapien, id suscipit magna felis nec elit.
												Class aptent taciti sociosqu ad litora torquent per conubia
												nostra, per inceptos lorem ipsum dolor sit amet.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button icon solid">게시글보기</a></li>
													<li><a href="#" class="button icon alt solid ">추천</a></li>
												</ul>
											</footer>
										</section>
									</div>
									<div class="col-6 col-12-small">
										<section class="box">
											<a href="#" class="image featured"><img
												src="images/pic09.jpg" alt="" /></a>
											<header>
												<h3>Aptent veroeros aliquam</h3>
												<p>Posted 45 minutes ago</p>
											</header>
											<p>Lorem ipsum dolor sit amet sit veroeros sed et blandit
												consequat sed veroeros lorem et blandit adipiscing feugiat
												phasellus tempus hendrerit, tortor vitae mattis tempor,
												sapien sem feugiat sapien, id suscipit magna felis nec elit.
												Class aptent taciti sociosqu ad litora torquent per conubia
												nostra, per inceptos lorem ipsum dolor sit amet.</p>
											<footer>
												<ul class="actions">
													<li><a href="#" class="button icon solid ">게시글보기</a></li>
													<li><a href="#"
														class="button alt icon solid ">추천</a></li>
												</ul>
											</footer>
										</section>
									</div>
								</div>
							</section>

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
								
									<h2>최신뉴스</h2>
								</header>
								<ul class="dates">
						
									<li><span class="date">Jan <strong>27</strong></span>
										<h3>
											<a href="#">Lorem dolor sit amet veroeros</a>
										</h3>
										<p>Ipsum dolor sit amet veroeros consequat blandit ipsum
											phasellus lorem consequat etiam.</p></li>
									<li><span class="date">Jan <strong>23</strong></span>
										<h3>
											<a href="#">Ipsum sed blandit nisl consequat</a>
										</h3>
										<p>Blandit phasellus lorem ipsum dolor tempor sapien
											tortor hendrerit adipiscing feugiat lorem.</p></li>
									<li><span class="date">Jan <strong>15</strong></span>
										<h3>
											<a href="#">Magna tempus lorem feugiat</a>
										</h3>
										<p>Dolore consequat sed phasellus lorem sed etiam nullam
											dolor etiam sed amet sit consequat.</p></li>
									<li><span class="date">Jan <strong>12</strong></span>
										<h3>
											<a href="#">Dolore tempus ipsum feugiat nulla</a>
										</h3>
										<p>Feugiat lorem dolor sed nullam tempus lorem ipsum dolor
											sit amet nullam consequat.</p></li>
									<li><span class="date">Jan <strong>10</strong></span>
										<h3>
											<a href="#">Blandit tempus aliquam?</a>
										</h3>
										<p>Feugiat sed tempus blandit tempus adipiscing nisl lorem
											ipsum dolor sit amet dolore.</p></li>
								</ul>
							</section>
						</div>
						<div class="col-4 col-12-medium">
							<section>
								<header>
									<h2>What's this all about?</h2>
								</header>
								<a href="#" class="image featured"><img
									src="images/pic10.jpg" alt="" /></a>
								<p>
									This is <strong>Dopetrope</strong> a free, fully responsive
									HTML5 site template by <a href="http://twitter.com/ajlkn">AJ</a>
									for <a href="http://html5up.net/">HTML5 UP</a> It's released
									for free under the <a href="http://html5up.net/license/">Creative
										Commons Attribution</a> license so feel free to use it for any
									personal or commercial project &ndash; just don't forget to
									credit us!
								</p>
								<footer>
									<ul class="actions">
										<li><a href="#" class="button">NEWS 전체보기</a></li>
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
									<li><a href="#">Lorem ipsum dolor sit amet sit
											veroeros</a></li>
									<li><a href="#">Sed et blandit consequat sed tlorem
											blandit</a></li>
								</ul>
							</section>
						</div>
						<div class="col-4 col-6-medium col-12-small">
							<section>
								<header>
									<h2>Ipsum et phasellus</h2>
								</header>
								<ul class="divided">
									<li><a href="#">Lorem ipsum dolor sit amet sit
											veroeros</a></li>
									<li><a href="#">Sed et blandit consequat sed tlorem
											blandit</a></li>
								</ul>
							</section>
						</div>
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
									<li>&copy; Untitled. All rights reserved.</li>
									<li>Design: <a href="http://html5up.net">HTML5 UP</a></li>
								</ul>
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
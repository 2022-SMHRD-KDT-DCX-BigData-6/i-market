<%@page import="com.main.model.WebMemberDTO"%>
<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>전체상품</title>
<style type="text/css">
</style>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/itemList_young.css" />
</head>
<body>
<% 
	String user_id = (String)session.getAttribute("user_id");
	WebMemberDTO loginMember = (WebMemberDTO) session.getAttribute("loginMember");
   %>
	<section>
		<div class="row">
			<div class="col-12" align="right">
				<%if(loginMember==null) { %>
		<a href="user/join.jsp">
				<input type="button" class="btn float-right" value="Join">
		</a>
		<a href="user/login.jsp">
			<input type="button" class="btn float-right" value="Login">
			</a>
		<%} else { 
				if(loginMember.getUser_id().equals("admin")){%>
				<a href="select.jsp"><input type="button" class="btn float-right" value="전체회원정보"></a>
				<%} %>
			<a href="../Logout"><input type="button" class="btn float-right" value="Logout"></a>
			<%} %>
			
			</div>
		</div>
		<!-- Logo -->
		<h1>
			<a href="../main.jsp">아이 i 마켓</a>
		</h1>
		<span>유아용품전용 중고거래 플랫폼</span>

		<!-- Nav -->
		<nav id="nav">
				<ul>
					<li><a href="../main.jsp">홈</a></li>
					<li class="current"><a href="item/itemListMain.jsp">전체보기</a>
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
					<li><a href="../boardController?pagebutton=1">게시판</a></li>
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

		<!-- Banner -->
		<section id="banner">
			<header>
				<h2>우리아이 중고 직거래 마켓</h2>
				<p>중고 거래부터 동네 정보까지, 이웃과 함께해요. 가깝고 따뜻한 당신의 근처를 만들어요.</p>
			</header>
		</section>
	</section>
	<div id="page-wrapper">

		<%
		List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItem();
		%>

		<section>
			<div class="box container">
				<div class="row">
					<%
					for (int i = (item_list.size() - 1); i >= 0; i--) {
					%>
					<div class="col-4 col-6-medium col-12-small">
						<a
							href="itemDetail.jsp?item_idx=<%=item_list.get(i).getItem_idx()%>">
							<div class="box list">
								<div class="image featured">
									<img src="../photo/<%=item_list.get(i).getItem_photo()%>" />
								</div>
								<div class="box itemName">
									<h4><%=item_list.get(i).getItem_name()%></h4>
								</div>
								<div class="box itemPriceTime">
									<div class="box itemPrice">
										<%=item_list.get(i).getItem_price()%>
										원
									</div>
									<div class="box itemTime">
										<%=item_list.get(i).getUploaded_at()%>
									</div>
								</div>
								<div class="box itemAddr">
									<img
										src="https://m.bunjang.co.kr/pc-static/resource/5dcce33ad99f3020a4ab.png"
										width="15" height="17">
									<%=item_list.get(i).getUser_addr_at()%>
								</div>
							</div>
						</a>
					</div>
					<%
					}
					%>
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
			</div>
		</section>

	</div>

	<div class="sc-cZBZkQ dRROgx">
		<div class="sc-fEUNkw iBxkck">
			<a class="sc-dREXXX dlXzcb"><img
				src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM5Qjk5QTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuNiAxMmEuNTk2LjU5NiAwIDAgMCAuNDQ5LS4yMDJsNC44LTUuNGEuNi42IDAgMCAwIDAtLjc5N2wtNC44LTUuNGEuNi42IDAgMSAwLS44OTcuNzk3TDcuNTk4IDYgMy4xNTIgMTFBLjYuNiAwIDAgMCAzLjYgMTIiLz4KPC9zdmc+Cg=="
				width="12" height="12" alt="페이징 아이콘" class="sc-kcbnda fganyk"></a><a
				class="sc-dREXXX ihdOwP">1</a><a class="sc-dREXXX bmIYAP">2</a><a
				class="sc-dREXXX bmIYAP">3</a><a class="sc-dREXXX bmIYAP">4</a><a
				class="sc-dREXXX bmIYAP">5</a><a class="sc-dREXXX bmIYAP">6</a><a
				class="sc-dREXXX bmIYAP">7</a><a class="sc-dREXXX bmIYAP">8</a><a
				class="sc-dREXXX bmIYAP">9</a><a class="sc-dREXXX bmIYAP">10</a><a
				class="sc-dREXXX bmIYAP"><img
				src="data:image/svg+xml;base64,PHN2ZyB4bWxucz0iaHR0cDovL3d3dy53My5vcmcvMjAwMC9zdmciIHdpZHRoPSIxMiIgaGVpZ2h0PSIxMiIgdmlld0JveD0iMCAwIDEyIDEyIj4KICAgIDxwYXRoIGZpbGw9IiM5Qjk5QTkiIGZpbGwtcnVsZT0iZXZlbm9kZCIgZD0iTTMuNiAxMmEuNTk2LjU5NiAwIDAgMCAuNDQ5LS4yMDJsNC44LTUuNGEuNi42IDAgMCAwIDAtLjc5N2wtNC44LTUuNGEuNi42IDAgMSAwLS44OTcuNzk3TDcuNTk4IDYgMy4xNTIgMTFBLjYuNiAwIDAgMCAzLjYgMTIiLz4KPC9zdmc+Cg=="
				width="12" height="12" alt="페이징 아이콘"></a>
		</div>
	</div>

</body>
</html>
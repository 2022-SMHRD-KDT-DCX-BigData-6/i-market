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
	<section>
		<div class="row">
			<div class="col-12" align="right">
				<a href="../user/join.jsp"> <input type="button"
					class="btn float-right" value="Join">
				</a> <a href="../user/login.jsp"> <input type="button"
					class="btn float-right" value="Login">
				</a>
			</div>
		</div>
		<!-- Logo -->
		<h1>
			<a href="../index.html">아이 i 마켓</a>
		</h1>
		<span>유아용품전용 중고거래 플랫폼</span>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="../index.html">홈</a></li>
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
				<li><a href="left-sidebar.html">News</a></li>
				<li><a href="right-sidebar.html">게시판</a></li>
				<li><a href="uploadItemBoard.jsp">판매하기</a></li>
				<li><a href="no-sidebar.html">마이페이지</a></li>
				<div class="sc-eNQAEJ voMyM">
					<input type="text" placeholder="검색" maxlength="40"
						class="sc-hMqMXs cLfdog" value=""> <img
						src=".././images/2be3c66fa47ccd5ece2a.png" class="sc-hMqMXs search"
						width="16" height="16" alt=" " />
				</div>

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
								<div class="image featured"><img
									src="../photo/<%=item_list.get(i).getItem_photo()%>" alt="" /></div>
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
									<img src="https://m.bunjang.co.kr/pc-static/resource/5dcce33ad99f3020a4ab.png"
										width="15" height="17">  <%=item_list.get(i).getUser_addr_at()%>
								</div>
							</div>
						</a>
					</div>
					<%
					}
					%>
				</div>
			</div>
		</section>

	</div>
</body>
</html>
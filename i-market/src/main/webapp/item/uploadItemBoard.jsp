<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta name="viewport"
	content="width=device-width, initial-scale=1, user-scalable=no" />
<link rel="stylesheet" href="../assets/css/itemList_young.css" />
</head>
<body>
	<section>
		<div class="row">
			<div class="col-12" align="right">
				<a href="user/join.jsp"> <input type="button"
					class="btn float-right" value="Join">
				</a> <a href="user/login.jsp"> <input type="button"
					class="btn float-right" value="Login">
				</a>
			</div>
		</div>
		<!-- Logo -->
		<h1>
			<a href="index.html">아이 i 마켓</a>
		</h1>
		<span>유아용품전용 중고거래 플랫폼</span>

		<!-- Nav -->
		<nav id="nav">
			<ul>
				<li class="current"><a href="index.html">홈</a></li>
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
						src="./images/2be3c66fa47ccd5ece2a.png" class="sc-hMqMXs search"
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
	<div class="box container">
		<div id="board">
			<form action="uploadItemService" method="post"
				enctype="multipart/form-data">

				<table id="itemList">
					<tr>
						<td>제목</td>
						<td><input type="text" name="item_name"></td>
					</tr>
					<tr>
						<td>작성자</td>
						<td><input type="text" name="user_id"></td>
					</tr>
					<tr>
						<td>가격</td>
						<td><input type="number" name="item_price"></td>
					</tr>
					<tr>
						<td>분류</td>
						<td><select name="item_category">
								<option value="분류1">분류1</option>
								<option value="분류2">분류2</option>
								<option value="분류3">분류3</option>
						</select></td>
					</tr>
					<tr>
						<td>거래장소</td>
						<td><input type="text" name="user_addr_at"></td>
					</tr>
					<tr>
						<td>흥정여부</td>
						<td><input type="radio" name="item_bargain_YN" value="1">예<input
							type="radio" name="item_bargain_YN" value="0">아니오</td>

					</tr>
					<tr>
						<td colspan="2">내용</td>
					</tr>
					<tr>
						<td colspan="2"><input type="file" name="item_photo"
							style="float: right;"> <textarea rows="10"
								name="item_info" style="resize: none;"></textarea></td>
					</tr>
					<tr>
						<td colspan="2"><input type="reset" value="초기화"> <input
							type="submit" value="작성하기"></td>
					</tr>
				</table>
			</form>
		</div>
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
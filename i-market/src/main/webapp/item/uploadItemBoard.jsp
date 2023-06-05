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
<script type="text/javascript" src="upload.js"></script>

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

	<div class="sc-fHSTwm jSFmce">
		<div class="sc-hdPSEv hMuHZN">
			<nav class="sc-gbzWSY fzWxfF">
				<div class="sc-jGxEUC ROGwk">
					<a class="sc-jqIZGH iQbNXO" href="/products/new">상품등록</a>
				</div>
				<div class="sc-jGxEUC ezuxFa">
					<a class="sc-jqIZGH iQbNXO" href="/products/manage">상품관리</a>
				</div>
				<div class="sc-jGxEUC ezuxFa">
					<a href="https://pay2.bunjang.co.kr?tab=purchases" target="_blank"
						rel="noopener noreferrer" class="sc-jMMfwr yLxso">구매/판매 내역</a>
				</div>
			</nav>
		</div>
		<div class="ProductNewstyle__Wrapper-sc-7fge4a-0 hvgCyR">
			<form action="uploadItemService" method="post"
				enctype="multipart/form-data">
				<main class="ProductNewstyle__Main-sc-7fge4a-1 VvECz">
					<section class="ProductNewstyle__Basic-sc-7fge4a-2 lmrVST">
						<h2>기본정보</h2>
						<ul class="ProductNewstyle__Groups-sc-7fge4a-3 fSSAPi">
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp">
								<div class="ProductNewstyle__Label-sc-7fge4a-5 bFQfPj">
									상품이미지
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH image">
									<ul class="sc-eEieub ljAqnv">
										<li class="sc-RbTVP dOJAXa"><img src="" class="thumb"
											onerror="this.src='../photo/photoBefore.JPG'" /> <input
											type="file" id="imageSelector" name="item_photo"
											accept="image/jpeg, image/jpg, image/png" multiple /></li>
									</ul>
								</div>
							</li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp">
								<div class="ProductNewstyle__Label-sc-7fge4a-5 gvWKtv">제목
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div class="ProductNewstyle__TitleWrapper-sc-7fge4a-9 heHZUo">
										<div class="ProductNewstyle__WithDeleteAll-sc-7fge4a-7 bofJgA">
											<input type="text" placeholder="상품 제목을 입력해주세요."
												class="ProductNewstyle__NameInput-sc-7fge4a-10 lnslOO"
												name="item_name">
										</div>
									</div>
								</div>
							</li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 knwJIa">
									카테고리
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div class="CategoryBoxstyle__CategoryGroup-sc-r1u93i-0 kwaHYe">
										<div
											class="CategoryBoxstyle__CategoryListWrapper-sc-r1u93i-1 cSzUJd">
											<ul class="CategoryBoxstyle__CategoryList-sc-r1u93i-2 fAfkpF">
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="베이비의류(0-2세)">베이비의류(0-2세)</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="여아의류(3-6세)">여아의류(3-6세)</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="여주니어의류(7세~)">여주니어의류(7세~)</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="남아의류(3-6세)">남아의류(3-6세)</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="남주니어의류(7세~)">남주니어의류(7세~)</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="유아동신발/잡화">유아동신발/잡화</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="교육/완구/인형">교육/완구/인형</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="유아동용품">유아동용품</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="출산/임부용품">출산/임부용품</button></li>
												<li class="CategoryBoxstyle__Category-sc-r1u93i-3 btyiVm">
													<button type="button" class="CategoryBoxstyle__CategoryButton-sc-r1u93i-4 kulsCh" name="item_category" value="이유용품/유아식기">이유용품/유아식기</button></li>
											</ul>
										</div>
									</div>
									<div
										style="display: flex; align-items: center; justify-content: space-between; margin-top: 1.5rem;">
										<h3
											class="CategoryBoxstyle__SelectedCategory-sc-r1u93i-5 jYpteP">
											선택한 카테고리 : <b></b>
										</h3>
									</div>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 gvWKtv">
									거래지역
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<input placeholder="거래 지역을 입력해주세요." type="text" name="user_addr_at"
										class="ProductNewstyle__LocationInput-sc-7fge4a-14 GEuoA"
										>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 gGpLyz">
									흥정
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div class="sc-ciodno gjftID">
										<label class="sc-gGCbJM iBQgZV"> <input
											name="item_bargain_YN" type="radio" value="0">흥정불가
										</label> <label class="sc-gGCbJM jZbUmZ"> <input
											name="item_bargain_YN" type="radio" value="1"
											checked="checked">흥정가능
										</label>
									</div>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 gvWKtv"> 가격
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<div
										class="ProductNewstyle__PriceInputWrapper-sc-7fge4a-15 fDlSqf">
										<input type="number" placeholder="숫자만 입력해주세요." 	class="ProductNewstyle__PriceInput-sc-7fge4a-16 eAhDI"
											name="item_price"> 원
									</div>
								</div></li>
							<li class="ProductNewstyle__Group-sc-7fge4a-4 UPAMp"><div
									class="ProductNewstyle__Label-sc-7fge4a-5 iqSfRn">
									설명
								</div>
								<div class="ProductNewstyle__Content-sc-7fge4a-6 gxpNmH">
									<textarea rows="6" name="item_info"
										class="ProductNewstyle__Description-sc-7fge4a-21 gQnFKF"
										placeholder="여러 장의 상품 사진과 구입 연도, 브랜드, 사용감, 하자 유무 등 구매자에게 필요한 정보를 꼭 포함해 주세요."></textarea>
								</div></li>
						</ul>
					</section>
				</main>
				<footer class="ProductNewstyle__FloatingFooter-sc-7fge4a-27 kppXDq">
					<div
						class="ProductNewstyle__RegisterButtonWrapper-sc-7fge4a-28 iMvseQ">
						<button type="submit"
							class="ProductNewstyle__RegisterButton-sc-7fge4a-29 bgpKeW">
						</button>
					</div>
				</footer>
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
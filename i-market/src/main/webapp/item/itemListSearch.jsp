<%@page import="org.apache.ibatis.reflection.SystemMetaObject"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
<%@page import="java.util.List"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%
request.setCharacterEncoding("UTF-8");
%>

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
<bodyz>

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
					<form action="itemListSearch.jsp" method="get">
						<input type="text" name="itemSearchKey" placeholder="검색"
							maxlength="40" class="sc-hMqMXs cLfdog">
						<button type="submit">검색</button>
						<img src=".././images/2be3c66fa47ccd5ece2a.png"
							class="sc-hMqMXs search" width="16" height="16" alt=" " />
					</form>
				</div>
				<div class="filter_finder__E_I19">
					<form action="itemListSearch.jsp" method="get">
						<div class="filter_finder_filter__tysdn">
							<div class="filter_finder_col__k6BKF filter_finder_price__dQExh">
								<div class="finder_price_inner">
									<input type="number" title="최소가격 입력" name="itemPriceSearchKey1"
										placeholder="0" class="sc-hMqMXs cLfdog">원 ~ <input
										type="number" placeholder="#" title="최대가격 입력"
										name="itemPriceSearchKey2" class="sc-hMqMXs cLfdog">원
									<button type="submit">가격대 검색</button>
								</div>
							</div>
						</div>
					</form>
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
		String itemSearchKey = null;
		if (request.getParameter("itemSearchKey") != null) {
			itemSearchKey = (String) request.getParameter("itemSearchKey");
			System.out.println("searchword from parameter is :" + itemSearchKey);
		}
		if (session.getAttribute("itemSearchKey") != null) {
			itemSearchKey = (String) session.getAttribute("itemSearchKey");
			System.out.println("searchword from session is :" + itemSearchKey);
		}
		String itemCategoryKey = null;
		if (request.getParameter("itemCategoryKey") != null) {
			itemCategoryKey = (String) request.getParameter("itemCategoryKey");
			System.out.println("searchword from parameter is :" + itemCategoryKey);
		}
		if (session.getAttribute("itemCategoryKey") != null) {
			itemCategoryKey = (String) session.getAttribute("itemCategoryKey");
			System.out.println("searchword from session is :" + itemCategoryKey);
		}
		/* 가격비교 값 받아오기 */
		int itemPriceSearchKey1 = 0;
		int itemPriceSearchKey2 = 0;
		if (request.getParameter("itemPriceSearchKey1") != null) {
			itemPriceSearchKey1 = Integer.parseInt(request.getParameter("itemPriceSearchKey1"));
			System.out.println("searchword from parameter is :" + itemPriceSearchKey1);
		}
		if (session.getAttribute("itemPriceSearchKey1") != null) {
			itemPriceSearchKey1 = (int) session.getAttribute("itemPriceSearchKey1");
			System.out.println("searchword from session is :" + itemPriceSearchKey1);
		}
		if (request.getParameter("itemPriceSearchKey2") != null) {
			itemPriceSearchKey2 = Integer.parseInt(request.getParameter("itemPriceSearchKey2"));
			System.out.println("searchword from parameter is :" + itemPriceSearchKey2);
		}
		if (session.getAttribute("itemPriceSearchKey2") != null) {
			itemPriceSearchKey2 = (int) session.getAttribute("itemPriceSearchKey2");
			System.out.println("searchword from session is :" + itemPriceSearchKey2);
		}
		t_iteminfoDTO dto = new t_iteminfoDTO();
		%>


		<form action="itemListSearch.jsp" method="get">
			<div class="sc-iqzUVk VEwtK" style="margin-top: 20px;">
				<div class="sc-ipZHIp jNxiOc">
					<a class="sc-dliRfk imEKSd" href="itemListMain.jsp">
						<div class="sc-kLIISr kcDYue">전체보기</div>
					</a>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="베이비의류(0-2세)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">베이비의류(0-2세)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="여아의류(3-6세)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">여아의류(3-6세)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="여주니어의류(7세~)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">여주니어의류(7세~)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="남아의류(3-6세)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">남아의류(3-6세)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="남주니어의류(7세~)"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">남주니어의류(7세~)</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="유아동신발/잡화"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">유아동신발/잡화</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="교육/완구/인형"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">교육/완구/인형</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="유아동용품" href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">유아동용품</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="출산/임부용품" href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">출산/임부용품</div>
					</button>
				</div>
				<div>
					<button class="sc-dliRfk imEKSd" type="submit"
						name="itemCategoryKey" value="이유용품/유아식기"
						href="itemListSearch.jsp">
						<div class="sc-kLIISr kcDYue">이유용품/유아식기</div>
					</button>
				</div>
				<div></div>
				<div></div>
				<div></div>
			</div>
		</form>

		<%
		List<t_iteminfoDTO> item_list = null;
		if (request.getParameter("itemSearchKey") != null) {
			item_list = new t_iteminfoDAO().showItemSearch(itemSearchKey);
			session.setAttribute("item_list", item_list);
		} else if (request.getParameter("itemCategoryKey") != null) {
			item_list = new t_iteminfoDAO().showItemCategory(itemCategoryKey);
			session.setAttribute("item_list", item_list);
		}
		item_list = (List<t_iteminfoDTO>)session.getAttribute("item_list");
		int price = 0;
		int itemPriceSum = 0;
		int itemPriceAvg = 0;
		int priceA = 0;
		int priceMax = 0;
		/* 평균값 */
		for (int i = 0; i < item_list.size(); i++) {
			price = item_list.get(i).getItem_price();
			itemPriceSum += price;
		}
		/* 최대값 */
		for (int i = 0; i < item_list.size(); i++) {
			priceA = item_list.get(i).getItem_price();
			if (priceA >= priceMax) {
				priceMax = priceA;
			}
		}
		/* 최소값 */
		int priceMin = item_list.get(0).getItem_price();
		for (int i = 0; i < item_list.size(); i++) {
			priceA = item_list.get(i).getItem_price();
			if (priceA < priceMin) {
				priceMin = priceA;
			}
		}
		itemPriceAvg = itemPriceSum / item_list.size();
		%>
		<%
		if (request.getParameter("itemSearchKey") != null) {
		%>
		<h1>
			"<%=itemSearchKey%>" 의 평균 가격 :
			<%=itemPriceAvg%>
			원<br>"<%=itemSearchKey%>" 의 최대 가격 :
			<%=priceMax%>
			원<br>"<%=itemSearchKey%>" 의 최소 가격 :
			<%=priceMin%>
			원
		</h1>
		<%
		} else if (request.getParameter("itemCategoryKey") != null) {
		%>
		<h1>
			"<%=itemCategoryKey%>" 의 평균 가격 :
			<%=itemPriceAvg%>
			원<br>"<%=itemCategoryKey%>" 의 최대 가격 :
			<%=priceMax%>
			원<br>"<%=itemCategoryKey%>" 의 최소 가격 :
			<%=priceMin%>
			원
		</h1>
		<%
		}
		%>


		<section>
			<div class="box container">
				<div class="row">
					<%
					
					if (itemPriceSearchKey1 != 0 && itemPriceSearchKey2 != 0) {
						System.out.println("가격값 진입한 채로 리스트포문 진입");
					%>
					<%
					for (int i = (item_list.size() - 1); i >= 0; i--) {
						if (item_list.get(i).getItem_price() >= itemPriceSearchKey1
								&& item_list.get(i).getItem_price() <= itemPriceSearchKey2) {
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
					}}
					} else{
						System.out.println("가격값 없이 리스트포문 진입");
						System.out.println("최소값 : " + itemPriceSearchKey1 +"최대값 : "+ itemPriceSearchKey2);
					%>

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
					}
					%>
				</div>
			</div>
		</section>

	</div>

	<div class="sc-cZBZkQ dRROgx">
		<div class="sc-fEUNkw iBxkck"></div>
	</div>

</body>
</html>
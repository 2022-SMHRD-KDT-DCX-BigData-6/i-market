<%@page import="java.util.List"%>
<%@page import="com.main.model.t_iteminfoDAO"%>
<%@page import="com.main.model.t_iteminfoDTO"%>
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
<link rel="stylesheet" href="../assets/css/itemDetail_young.css" />
</head>
<body class="hoian-kr">
	<noscript>
		<img height="1" width="1" style="display: none" alt="facebook"
			src="https://www.facebook.com/tr?id=992961397411651&ev=PageView&noscript=1" />
	</noscript>

	<script>
		!function(t, e, n, s, a, c, i, o, p) {
			t.AppsFlyerSdkObject = a, t.AF = t.AF
					|| function() {
						(t.AF.q = t.AF.q || []).push([ Date.now() ]
								.concat(Array.prototype.slice.call(arguments)))
					}, t.AF.id = t.AF.id || i, t.AF.plugins = {}, o = e
					.createElement(n), p = e.getElementsByTagName(n)[0],
					o.async = 1, o.src = "https://websdk.appsflyer.com?"
							+ (c.length > 0 ? "st="
									+ c.split(",").sort().join(",") + "&" : "")
							+ (i.length > 0 ? "af_id=" + i : ""), p.parentNode
							.insertBefore(o, p)
		}(window, document, "script", 0, "AF", "banners", {
			banners : {
				key : "629f6f7a-a2a6-49c0-8d27-ffa48df1cd0e"
			}
		})
		AF('banners', 'showBanner')
  function openPop(){
    var popup = window.open('http://localhost:8090/i-market/item/CreateChatService.do', '채팅', 'width=700px,height=800px,scrollbars=no,menubar=0,location=no');
  }
	</script>

	<%
	int item_idx = Integer.parseInt(request.getParameter("item_idx"));
	t_iteminfoDTO dto = new t_iteminfoDTO(item_idx);
	t_iteminfoDAO dao = new t_iteminfoDAO();
	List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItemDetail(dto);
	%>
	<article id="content" data-id="556391615">
		<h1 class="hide"><%=item_list.get(0).getItem_name()%></h1>
		<section id="article-images">
			<h3 class="hide">이미지</h3>
			<div id="image-slider">
				<div class="slider-wrap">
					<div class="slider slick-initialized slick-slider"
						data-article-id="556391615">
						<div class="slick-list draggable">
							<div class="slick-track"
								style="opacity: 1; width: 729px; transform: translate3d(0px, 0px, 0px);">
								<div class="	" data-slick-index="0" aria-hidden="false"
									style="width: 729px;">
									<div>
										<a href="itemPhotoDetail.jsp?item_idx=<%=item_idx %>"
											style="width: 100%; display: inline-block;" tabindex="0">
											<div>
												<div class="image-wrap" data-image-id="-2063102816"
													data-image-index="1">
													<img class="portrait"
														alt=<%=item_list.get(0).getItem_name()%>
														src=".././photo/<%=item_list.get(0).getItem_photo()%>"
														style="opacity: 1;">
												</div>
											</div>
										</a>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</section>

		<section id="article-profile">
			<a id="article-profile-link" href="/u/kxz8o6Y4YYV7qDXA">
				<h3 class="hide">프로필</h3>
				<div class="space-between">
					<div style="display: flex;">
						<div id="article-profile-left">
							<div id="nickname"><%=item_list.get(0).getUser_id()%></div>
							<div id="region-name"><%=item_list.get(0).getUser_addr_at()%></div>
						</div>
					</div>
					<div id="article-profile-right">
						<dl id="temperature-wrap">
							<dt>흥정여부</dt>
							<dd class="text-color-04 ">
								<%
								if (item_list.get(0).getItem_bargain_YN().equals("1")) {
								%>가능
								<%
								} else {
								%>불가능
								<%
								}
								%>
							</dd>
						</dl>
					</div>
				</div>
			</a>
		</section>

		<section id="article-description">
			<h1 property="schema:name" id="article-title"
				style="margin-top: 0px;"><%=item_list.get(0).getItem_name()%></h1>
			<p id="article-category">
				<%=item_list.get(0).getItem_category()%>
				∙
				<time>
					<%=item_list.get(0).getUploaded_at()%>
				</time>
			</p>
			<p property="schema:priceValidUntil" datatype="xsd:date"
				content="2025-06-02"></p>
			<p rel="schema:url" resource="https://www.daangn.com/556391615"></p>
			<p property="schema:priceCurrency" content="KRW"></p>
			<p id="article-price" property="schema:price" content="5000.0"
				style="font-size: 18px; font-weight: bold;"><%=item_list.get(0).getItem_price()%>원
			</p>
			<div property="schema:description" id="article-detail">
				<p><%=item_list.get(0).getItem_info()%></p>
			</div>
			<p id="article-counts">관심 5 ∙ 채팅 1 ∙ 조회 124</p>
			<tr>
						<td colspan="2"><input type="reset" value="초기화">
						 <input type="button" onclick="openPop()" value="채팅"></td>
					</tr>
		</section>
	</article>

</body>
</html>
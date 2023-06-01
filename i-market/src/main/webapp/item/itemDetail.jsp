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
<link rel="stylesheet" href="../assets/css/itemList_young.css" />
</head>
<body>
	<%
	int item_idx = Integer.parseInt(request.getParameter("item_idx"));
	t_iteminfoDTO dto = new t_iteminfoDTO(item_idx);
	t_iteminfoDAO dao = new t_iteminfoDAO();
	List<t_iteminfoDTO> item_list = new t_iteminfoDAO().showItemDetail(dto);
	%>

	<article id="content">

		<h1 class="item_name"><%=item_list.get(0).getItem_name()%></h1>
		<section id="item_photo">
			<div>
				<div class="image-wrap">
					<img class="#" alt='상품 이미지'
						src=".././photo/<%=item_list.get(0).getItem_photo()%>" />
				</div>
			</div>
		</section>
		<section id="#">
			<h3 class="#">프로필</h3>
			<div class="#">
				<div style="display: flex;">
					<div id="article-profile-image">
						<img alt="user_profile_photo" src="#" />
					</div>
					<div id="#">
						<div id="user_id"><%=item_list.get(0).getUser_id()%></div>
						<div id="user_addr"><%=item_list.get(0).getUser_addr_at()%></div>
					</div>
				</div>
			</div>
		</section>
		<section id="#">
			<!-- 상품 상세내용 -->
			<h1 id="item_name"><%=item_list.get(0).getItem_name()%></h1>
			<p id="item_category">
				<%=item_list.get(0).getItem_category()%>
				<time><%=item_list.get(0).getUploaded_at()%></time>
			</p>
			<p id="item_price" style="font-size: 18px; font-weight: bold;"><%=item_list.get(0).getItem_price()%>
				원
			</p>
			<div id="item_info">
				<p><%=item_list.get(0).getItem_info()%></p>

			</div>
			<p id="article-counts">관심 15 ∙ 채팅 3 ∙ 조회 716</p>
			<form action="CreateChatService.do">
			<tr>
						<td colspan="2"><input type="reset" value="초기화">
						 <input type="submit" value="채팅"></td>
					</tr>
			</form>
		</section>
	</article>


</body>
</html>
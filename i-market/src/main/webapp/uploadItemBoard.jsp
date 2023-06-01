<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<meta charset="utf-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
</head>
<body>

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
					<td><input type=	"text" name="user_addr_at"></td>
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
						style="float: right;"> <textarea rows="10" name="item_info"
							style="resize: none;"></textarea></td>
				</tr>
				<tr>
					<td colspan="2"><input type="reset" value="초기화"> <input
						type="submit" value="작성하기"></td>
				</tr>
			</table>
		</form>
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
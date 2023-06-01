<%@page import="java.util.List"%>
<%@page import="com.smhrd.model.chat.t_chattinginfoDAO"%>
<%@page import="com.smhrd.model.chat.t_chattinginfoDTO"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	int croom_idx = Integer.parseInt(request.getParameter("croom_idx"));
	t_chattinginfoDTO dto = new t_chattinginfoDTO(croom_idx);
	t_chattinginfoDAO dao = new t_chattinginfoDAO();
	List<t_chattinginfoDTO> detail_list = dao.showChatRoom(dto);
	String user_id = (String) session.getAttribute("user_id");
	session.setAttribute("croom_idx", croom_idx);
	%>

	<section class="chatbox">
		<section class="chat-window">
			<%
				for (int i = 0; i < detail_list.size(); i++) {
					if (user_id.equals(detail_list.get(i).getTalker())) {
			%>
			<article class="msg-container msg-self" id="msg-0">
				<div class="msg-box">
					<div class="flr">
						<div class="messages">
							<p class="msg" id="msg-1">
								<%=detail_list.get(i).getTalking()%>
							</p>
						</div>
						<span class="timestamp"><span class="username"><%=detail_list.get(i).getTalker()%></span>•<span class="posttime"><%=detail_list.get(i).getTalking_at()%></span></span>
					</div>
					<img class="user-img" id="user-0" src="//gravatar.com/avatar/56234674574535734573000000000001?d=retro">
				</div>
			</article>
		
			<%
				}else{
			%>
			<article class="msg-container msg-remote" id="msg-0">
				<div class="msg-box">
					<img class="user-img" id="user-0" src="//gravatar.com/avatar/00034587632094500000000000000000?d=retro">
					<div class="flr">
						<div class="messages">
							<p class="msg" id="msg-0">
								<%=detail_list.get(i).getTalking()%>
							</p>
						</div>
						<span class="timestamp"><span class="username"><%=detail_list.get(i).getTalker()%></span>•<span class="posttime"><%=detail_list.get(i).getTalking_at()%></span></span>
					</div>
				</div>
			</article>
					
			<%		
					}
				}
			%>
			
		</section>
		<form class="chat-input" onsubmit="return false;">
			<input type="text" autocomplete="on" placeholder="Type a message">
			<button>
                    <svg style="width:24px;height:24px" viewBox="0 0 24 24"><path fill="rgba(0,0,0,.38)" d="M17,12L12,17V14H8V10H12V7L17,12M21,16.5C21,16.88 20.79,17.21 20.47,17.38L12.57,21.82C12.41,21.94 12.21,22 12,22C11.79,22 11.59,21.94 11.43,21.82L3.53,17.38C3.21,17.21 3,16.88 3,16.5V7.5C3,7.12 3.21,6.79 3.53,6.62L11.43,2.18C11.59,2.06 11.79,2 12,2C12.21,2 12.41,2.06 12.57,2.18L20.47,6.62C20.79,6.79 21,7.12 21,7.5V16.5M12,4.15L5,8.09V15.91L12,19.85L19,15.91V8.09L12,4.15Z"></path></svg>
                </button>
		</form>
	</section>

</body>
</html>
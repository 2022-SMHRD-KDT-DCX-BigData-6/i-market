<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Login Page</title>
<style type="text/css">
	 fieldset{
	width: 300px;
	height: 300px;
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 20px;
	}
	
	div#id{
	position: absolute;
	top: 24%;
    left: 25%;
	}
	
	#user_id {
		height:30px;
	}
	
	div#pw{
	position: absolute;
	top: 40%;
    left: 25%;
	}
	
	#user_pw {
		height:30px;
	}
	
	div#login{
	position: absolute;
	height: auto;
	top: 58%;
    left: 25%;
	}
	
	#button1{
	width:55pt;
	height:30pt; 
	background-Color:yellow;
	border: 1px solid #FFD700;
	border-radius: 10px;
	}
	
	div#join{
	position: absolute;
	height: auto;
	top: 58%;
    left: 54%;
	}
	
	#button2{
	width:55pt;
	height:30pt; 
	background-Color:yellow;
	border: 1px solid #FFD700;
	border-radius: 10px;
	}
	
	h1{
	position:relative;
	 width: 1440px;
	 line-height: 200px;
	 text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	 color: yellow;
	}
	
</style>
</head>
<body align="center">
<!-- Menu -->
		<ul class="links">
		<h1>i-market</h1>
		<fieldset>
		<legend>로그인</legend>
			<form action="../Login" method="post">
			<div id="login_wrapper">
				<div id="id">
				<input type="text" name="user_id" id="user_id" placeholder="ID을 입력하세요">
				</div>
				<div id="pw">
				<input type="password" name="user_pw" id="user_pw" placeholder="PW를 입력하세요">
				</div>
				<div id="login">
				<input type="submit"  id="button1" value="로그인" class="button fit">
				</div>
			</div>
			</form>
				<div id="join">
				<a href="join.jsp">
				<input type="submit"  id="button2" value="회원가입" class="button fit">
				</a>
				</div>
			</fieldset>
		</ul>
</body>
</html>
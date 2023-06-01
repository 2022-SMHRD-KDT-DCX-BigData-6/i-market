<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Join Page</title>
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
	
	#user_id {
		height:30px;
	}
	
	div#pw{
	position: absolute;
	top: 17%;
    left: 24%;
	}
	
	#user_pw {
		height:30px;
	}
	
	div#phone{
	position: absolute;
	top: 32%;
    left: 24%;
	}
	
	#user_phone {
		height:30px;
	}
	
	div#nick{
	position: absolute;
	top: 47%;
    left: 24%;
	}
	
	#user_nick {
		height:30px;
	}
	
	div#addr{
	position: absolute;
	top: 62%;
    left: 24%;
	}
	
	#user_addr {
		height:30px;
	}
	
	div#join{
	position: absolute;
	height: auto;
	top: 77%;
    left: 39%;
	}
	
	#button{
	width:55pt;
	height:30pt; 
	background-Color:yellow;
	border: 1px solid #FFD700;
	border-radius: 10px;
	}
	
	h1{
	position:absolute;
	 width: 1420px;
	 line-height: 200px;
	 text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	 color: yellow;
	}

</style>
</head>
<body align="center">
	<ul class="actions vertical">
		<h1>i-market</h1>
		<fieldset>
			<legend>회원가입</legend>
			<form action="../Join" method="post">
				<div id="join_wrapper">
					<div id="id">
						<input type="text" name="user_id" id="user_id" placeholder="ID을 입력하세요">
					</div>
					<div id="pw">
						<input type="password" name="user_pw" id="user_pw" placeholder="PW를 입력하세요">
					</div>
					<div id="phone">
						<input type="text" name="user_phone" id="user_phone" placeholder="전화번호를 입력하세요">
					</div>
					<div id="nick">
						<input type="text" name="user_nick" id="user_nick" placeholder="닉네임를 입력하세요">
					</div>
					<div id="addr">
						<input type="text" name="user_addr" id="user_addr" placeholder="집주소를 입력하세요">
					</div>
					<div id="join">
						<input type="submit" id="button" value="JoinUs" class="button fit">
					</div>
				</div>
			</form>
		</fieldset>
	</ul>
</body>
</html>
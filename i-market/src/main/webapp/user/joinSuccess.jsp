<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" isELIgnored="false"%>
    
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<title>Insert title here</title>
<meta charset="UTF-8" />
<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
<style type="text/css">
.tomain :hover{
	text-decoration: underline;
	background-color: red;
	border: 1px solid #FFD700;
	width:55pt;
	height:30pt;
	border-radius: 10px;
}

 fieldset{
	width: 300px;
	height: 300px;
	position: absolute;
    top: 50%;
    left: 50%;
    transform: translate(-50%, -50%);
    border-radius: 20px;
	}
	
	#wrapper {
	position: absolute;
	height: auto;
	top: 25%;
    left: 18%;
	}
	
	#goMain {
	position: absolute;
	height: auto;
	top: 50%;
    left: 39%;
	}
	
	.tomain{
	width:55pt;
	height:30pt; 
	background-Color:yellow;
	border: 1px solid #FFD700;
	border-radius: 10px;
	}
	
	h1{
	position:absolute;
	 width: 1520px;
	 line-height: 200px;
	 text-shadow: -1px 0 #000, 0 1px #000, 1px 0 #000, 0 -1px #000;
	 color: yellow;
	}
</style>
</head>
<body align="center">
	<h1>i-market</h1>
	<fieldset>
	<legend>회원가입 성공 !</legend>
	<div id="wrapper">
				<%=session.getAttribute("user_nick") %>님!<br>
				회원이 되신 것을 축하합니다!<br>
	</div>
	<br><br>
	<div id="goMain">
		<a href="../index.html"><input  class="tomain" type="button" id="button" value="메인페이지로"></a>
	</div>
	</fieldset>
</body>
</html>
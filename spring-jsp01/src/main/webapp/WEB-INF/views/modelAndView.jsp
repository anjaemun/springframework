<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>${sec_data}</h1>

	<a href="send?id=user&num1=1234&num2=73">[전송]</a>
	<hr>
	<form action="login">
		<input type="text" name="id" placeholder="ID"><br> <input
			type="password" name="password" placeholder="Password"><br>
		<input type="submit" value="로그인">
	</form>
	<hr>
	<input type="text" id="id_in">
	<br>
	<input type="password" id="password_in">
	<br>
	<input type="button" value="login" id="lbtn">
	<hr>
	<form action="dtoSend" method="post">
		<input type="number" name="code" placeholder="number"><br>
		<input type="text" name="strData" placeholder="name"><br>
		<input type="number" name="numData" placeholder="age"><br>
		<input type="date" name="dateData" placeholder="birthday"><br>
		<input type="submit" name="전송">
	</form>
</body>
<script type="text/javascript">
	const idinput = document.querySelector("#id_in");
	const pwinput = document.querySelector("#password_in");
	const logbtn = document.querySelector("#lbtn");

	logbtn.onclick = function() {
		let idv = idinput.value;
		let pwv = pwinput.value;
		/* console.log(idv);
		console.log(pwv); */
		let str = "login?id = " + idv + "&pwd = " + pwv;
		/* console.log(str); */
		location.href = str;
	}
</script>
</html>
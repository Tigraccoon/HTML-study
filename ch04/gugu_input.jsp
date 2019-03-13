<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>gugu_input</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>

<form action="gugu2.jsp" method="post">

단을 입력하세요! : 
<select name="dan">
<%
for(int i=2;i<=9;i++){ %>
	<option value="<%=i%>"><%=i %>단</option>
<%} %>
</select>
&nbsp;<input type="submit" value="전송!">

</form>

</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>font</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<br><br><br><br><br>

<h2>font test</h2>
<font size="1" color="red" face="굴림">HELLO</font><br>
<font size="2" color="red" face="굴림">HELLO</font><br>
<font size="3" color="red" face="굴림">HELLO</font><br>
<font size="4" color="red" face="굴림">HELLO</font><br>
<font size="5" color="red" face="굴림">HELLO</font><br>
<font size="6" color="red" face="굴림">HELLO</font><br>
<font size="7" color="red" face="굴림">HELLO</font><br>

<%
for(int i=1; i<=7; i++){%>
	<font size="<%=i%>" color="green" face="굴림">HELLO</font><br>
<%}
%>
<p style="font-size: 1px; color: navy;">HELLO</p>
<p style="font-size: 100px; color: navy;">HELLO</p>

<%
for(int i=1; i<=100; i++){
	String color= i%2==0 ? "red" : "green";%>
<p style="font-size: <%=i%>px; color: <%=color %>;">HELLO</p>
<%}
%>

</body>
</html>
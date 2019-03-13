<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>button_result</title>
</head>
<body style="text-align: center; font-size: 30px">

<%
request.setCharacterEncoding("utf-8");

int price = Integer.valueOf(request.getParameter("price"));
int amount = Integer.parseInt(request.getParameter("amount"));

int money = price*amount;
%>

가격 : <%=price %> 원<br>
수량 : <%=amount%> 개<br>
금액 : <%=money %> 원

</body>
</html>
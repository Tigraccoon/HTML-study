<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>result</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<br><br><br><br><br>

<%
request.setCharacterEncoding("utf-8");

String product_name=request.getParameter("product_name");
String chk=request.getParameter("chk");
int price=Integer.parseInt(request.getParameter("price"));
int amount=Integer.parseInt(request.getParameter("amount"));
int money=price*amount;//총액
int val=0;//부가세
int tax=0;//세금

if(chk==null){//과세상품
	val=(int)(money/1.1);
	tax=money-val;
} else{
	val=0;
	tax=0;
}

%>

품명 : <%=product_name %><br>
단가 : <%=String.format("%,d", price) %><br>
수량 : <%=amount %><br>
부가세 물품가액 : <%=String.format("%,d",val) %><br>
부가세 : <%=String.format("%,d",tax) %><br>
합계금액 : <%=String.format("%,d",money) %><br>

</body>
</html>
<!-- 192.168.0.235 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>himart</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<br><br><br><br><br>

<%
request.setCharacterEncoding("utf-8");

String location=request.getParameter("location");
String name=request.getParameter("name");
String code=request.getParameter("code");
int price=Integer.parseInt(request.getParameter("price"));
int amount=Integer.parseInt(request.getParameter("amount"));
String chk=request.getParameter("chk");
int val=0;
int tax=0;
int tot=price*amount;

if(chk==null){
	val=(int)(tot*0.1);
	tax=(int)((tot-val)*0.03);
	tot-=(tax+val);
}

%>

지점 : <%=location %><br>
품명 : <%=name %><br>
제품코드 : <%=code %><br>
단가 : <%=String.format("%,d",price) %><br>
수량 : <%=String.format("%,d",amount) %><br>
부가세 물품가액 : <%=String.format("%,d",val) %><br>
부가세 : <%=String.format("%,d",tax) %><br>
합계금액 : <%=String.format("%,d",tot) %><br>


</body>
</html>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary2</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<br><br><br><br><br>

<%

request.setCharacterEncoding("utf-8");
String name=request.getParameter("name");
String job=request.getParameter("job");
int basic=Integer.parseInt(request.getParameter("basic"));
int bonus=0;

switch(job){
case "사원": bonus=basic*2;break;
case "주임": bonus=basic*3;break;
case "대리": bonus=basic*4;break;
case "과장": bonus=basic*5;break;
case "부장": bonus=basic*6;break;
default: bonus=0;
}
int total=basic*12+bonus;
int tax=(int)(total*0.03);
int money=total-tax;
%>

이름 : <%=name %><br>
직급 : <%=job %><br>
기본급 : <%=String.format("%,d", basic) %><br>
보너스 : <%=String.format("%,d", bonus) %><br>
총액 : <%=String.format("%,d", total) %><br>
세금 : <%=String.format("%,d", tax) %><br>
실수령액 : <%=String.format("%,d", money) %><br>


</body>
</html>
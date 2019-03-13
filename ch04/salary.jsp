<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>salary</title>
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
int bonus=Integer.parseInt(request.getParameter("bonus"));

//총액
int total=basic*12+bonus;
//세액 3%
int tax=(int)(total*0.03);
//실수령액
int money=total-tax;

%>

이름 : <%=name %><br>
직급 : <%=job %><br>
기본급 : <%=String.format("%,d", basic) %><br>
보너스 : <%=String.format("%,d", bonus) %><br>
총액 : <%=String.format("%,d", total) %><br>
세액 : <%=String.format("%,d", tax) %><br>
실수령액 : <%=String.format("%,d", money) %><br>



</body>
</html>
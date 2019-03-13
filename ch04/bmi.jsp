<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>bmi</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<br><br><br><br><br>

<%
//BMI = 몸무게 / 신장 * 신장, 18.5 미만 저체중, ~23 정상, ~25 과체중, ~30 비만, 30이상은 초고도비만
request.setCharacterEncoding("utf-8");

String name=request.getParameter("name");
double height=Double.parseDouble(request.getParameter("height"));
double weight=Double.parseDouble(request.getParameter("weight"));
double bmi = weight / ((height/100)*(height/100));
String result="";

if(bmi<18.5){
	result="저체중!";
} else if(bmi<23){
	result="정상!";
} else if(bmi<25){
	result="과체중!";
} else if(bmi<30){
	result="비만!!";
} else {
	result="초고도비만!!!";
}

%>

<h1><%=name %> 당신의 BMI 지수는 <%=String.format("%.2f", bmi) %> 이며, <%=result %> 입니다!</h1>


</body>
</html>
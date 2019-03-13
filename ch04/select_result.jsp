<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>select_result</title>
</head>
<body style="text-align: center; font-size: 30px;">

<%

request.setCharacterEncoding("utf-8");

String cars=request.getParameter("cars");
String name ="";

switch(cars){
case "BMW" : name="비머"; break;
case "Benz" : name="메르세데스"; break;
case "Hyundai" : name="횬다이"; break;
case "Kia" : name="키아"; break;
case "Daewoo" : name="쉐보레"; break;
case "Ssangyong" : name="쌍룡"; break;
}

%>

<h2>선택한 차량 : <%=name %></h2>

</body>
</html>
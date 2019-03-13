<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>radiof_result</title>
</head>
<body>

<%	//javacode
	
request.setCharacterEncoding("utf-8");//텍스트 엔코딩 타입을 utf-8로 설정
String name = request.getParameter("name");	//파라미터에서 데이터를 변수에 저장
String age =  request.getParameter("age");

int days=Integer.parseInt(age) * 365;
String gender=request.getParameter("gender");
gender = gender.equals("male") ? "남성" : "여성";	//3항연산자

%>
<div style="text-align: center; font-size: 30px;">
이름 : <%=name %><br>
나이 : <%=age %><br>
성별 : <%=gender %><br>
살아온 날 : <%=days %>
</div>


</body>
</html>
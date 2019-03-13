<%@page import="com.sun.corba.se.spi.orbutil.fsm.Guard.Result"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>check_result</title>
</head>
<body style="text-align: center; font-size: 30px;">

<%

request.setCharacterEncoding("utf-8");

//체크박스는 같은 변수명에 여러 개의 값이 넘어가므로 배열로 처리
//request.getParameter("변수명")
//request.getParameterValues("배열변수명")
//선택된 값이 없으면 null이 들어옴 null처리를 안 할 경우 에러가 발생하므로 null을 대비하여 처리
String[] fruits=request.getParameterValues("fruits");

if(fruits != null){
	for(int i=0; i<fruits.length;i++){
		out.println(fruits[i]+"<br>");
	}
} else{
	out.println("선택된 과일이 없어요..");
}


%>

</body>
</html>
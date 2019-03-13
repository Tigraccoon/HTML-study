<!-- 192.168.0.235 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body style="text-align: center; font-size: 30px;">

<%

request.setCharacterEncoding("utf-8");

String name = request.getParameter("name");
String[] snack = request.getParameterValues("snack");

if(snack !=null){
	out.println(name + " 이(가) 좋아하는 과자들은?<br>");
	for(int i=0;i<snack.length;i++){
		out.println(snack[i]+"<br>");
	}
} else{
	out.println("과자를 안 좋아합니다..");
}

%>

</body>
</html>
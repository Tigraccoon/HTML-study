<!-- 192.168.0.235 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>formEx_result</title>
</head>
<body style="text-align: center; font-size: 20px; margin: auto; background-color: gray; display: table;">

<%

request.setCharacterEncoding("utf-8");

String id = request.getParameter("id");
String pwd = request.getParameter("pwd");
String name = request.getParameter("name");
String gender = request.getParameter("gender");
gender = gender.equals("남자") ? "남자" : "여자";
String email = request.getParameter("email");
String hp = request.getParameter("hp");
String address = request.getParameter("address");
String date = request.getParameter("date");
String color = request.getParameter("color");
StringBuilder sb = new StringBuilder();
String[] section1 = request.getParameterValues("section1");
if(section1 != null){
	for(int i=0; i<section1.length;i++){
		sb.append(section1[i]+" ");
	}
} else{
	sb.append("선호하는 취미가 없습니다.");
}
String section2 = request.getParameter("section2");
switch(section2){
	case "클래식" : section2="클래식"; break;
	case "째즈" : section2="째즈"; break;
	case "팝송" : section2="팝송"; break;
	case "가요" : section2="가요"; break;
}

%>

<fieldset style="background-color: <%=color%>; width:500px" >
<legend style="font-size: 30px">개인정보</legend>
아이디 : <%=id %><br>
비밀번호 : <%=pwd %><br>
이름 : <%=name %><br>
성별 : <%=gender %><br>
이메일 : <%=email %><br>
HP : <%=hp %><br>
주소 : <%=address %><br>
생년월일 : <%=date %><br>
선호분야1 : <%=sb %><br>
선호분야2 : <%=section2 %>

</fieldset>



</body>
</html>
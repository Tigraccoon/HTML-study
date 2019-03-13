<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>

<% 
int age=23;
//0~19 미성년자, 20~29 20대, 30~39 30대, 40~ 40대 이상

if(age<=19){
	out.println("미성년자");
} else if(age<=29){
	out.println("20대");
} else if(age<=39){
	out.println("30대");
}else{
	out.println("40대 이상");
}
%>


</body>
</html>
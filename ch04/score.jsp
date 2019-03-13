<!-- 192.168.0.235 -->

<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>score result</title>
<style type="text/css">
body{display: table; margin: auto; text-align: center;}
</style>
</head>
<body>
<br><br><br><br><br>

<%

request.setCharacterEncoding("utf-8");

int kor = Integer.parseInt(request.getParameter("kor"));
int eng = Integer.parseInt(request.getParameter("eng"));
int mat = Integer.parseInt(request.getParameter("mat"));

int tot = kor+eng+mat;
double avg = (double)tot/3.0;
String grade;

if(avg>=90){
	grade = "수";
} else if(avg>=80){
	grade = "우";
} else if(avg>=70){
	grade = "미";
} else if(avg>=60){
	grade = "양";
} else {
	grade = "가";
}

%>

<fieldset style="width: 100px">
<legend><h3>결과</h3></legend>
<table>
 <tr>
  <th>국어 : </th>
  <th><%=kor %></th>
 </tr>
 <tr>
  <th>영어 : </th>
  <th><%=eng %></th>
 </tr>
 <tr>
  <th>수학 : </th>
  <th><%=mat %></th>
 </tr>
 <tr>
  <th colspan="2">-------------</th>
 </tr>
 <tr>
  <th>총점 : </th>
  <th><%=tot %></th>
 </tr>
 <tr>
  <th colspan="2">-------------</th>
 </tr>
 <tr>
  <th>평균 : </th>
  <th><%=String.format("%.2f", avg) %></th>
 </tr>
 <tr>
  <th colspan="2">-------------</th>
 </tr>
 <tr>
  <th>등급 : </th>
  <th><%=grade %></th>
 </tr>
</table>
<br>
</fieldset>

</body>
</html>
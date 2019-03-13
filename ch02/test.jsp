<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!-- JSP 지시어 Page Directive -->

<!-- JSP : Java Server Page, 서버에서 실행되는 자바 웹페이지! Java + HTML, 컴파일, Tomcat서버가 자바 -> html로 -->

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JSP test!</title>
</head>
<body>

	<%
		//자바 코드 영역(톰캣이 컴파일하여 HTML로 변환!)
		int sum = 0;
		for (int i = 1; i <= 10; i++) {
			sum += i;
		}
		//out : 내장객체(웹에 출력), sysout은 콘솔에 출력이므로 웹에 사용할 것 이기 때문에 사용 x
		out.println(sum);
	%>
	
	<%
		for(int i=6;i>=1;i--){
			out.println("<h" + i + "> 문자열 테스트 </h" + i + ">");
		}
		
	%>
	
</body>
</html>
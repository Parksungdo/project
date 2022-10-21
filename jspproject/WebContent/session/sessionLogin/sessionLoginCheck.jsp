<%@ page contentType = "text/html; charset=euc-kr" %>
<%
    String memberId = (String)session.getAttribute("MEMBERID");

	//조건연산자(3항 연산자)
	// (조건식) ? a : b
	// -> 조건식이 true이면 a가, false면 b가 실행됨

    boolean login = memberId == null ? false : true;
%>

<html>
	<head><title>로그인여부 검사</title></head>
	<body>

<%
    if (login) {		// 로그인한 경우
%>
		<%= memberId %>님 환영 합니다.<br>
		
		<a href="sessionLogout.jsp">로그아웃</a><br>
		
		정보수정<br>
<%
    } else {			// 로그인 하지 않은 경우
%>
		로그인하지 않은 상태<br>
		
		<a href="sessionLoginForm.jsp">로그인</a><br>
		
		<a href="../../request/member/memberform.html">회원가입</a><br>
<%
    }
%>

	</body>
</html>

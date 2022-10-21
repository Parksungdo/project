<%@ page contentType = "text/html; charset=euc-kr" %>

<%
    session.invalidate();
%>

<html>
	<head><title>세션 종료</title></head>
	<body>
	
	<script>
		alert("로그아웃");
		location.href="../session/viewSession.jsp";
		
	</script>

	</body>
</html>
<%@ page contentType="text/html; charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>
<%@ page import="javaBean.SimpleBean" %>
<%
	SimpleBean sb1 = new SimpleBean();
//	sb1.msg = "hi";		// 접근 안됨(private 접근 제어자)
	sb1.setMsg("안녕"); 
%>

<jsp:useBean id="sb" class="javaBean.SimpleBean" />
<jsp:setProperty property="*" name="sb"/>

<%-- <jsp:setProperty name="sb" property="msg" />
<jsp:setProperty property="name" name="sb"/> --%>

<html>
	<body>

	<h1>간단한 자바빈 프로그래밍</h1>
	<br>
	이름 : <%=sb.getName() %> <br>
	이름 : <jsp:getProperty property="name" name="sb"/> <br>

	메시지: <%=sb.getMsg()%> <br>
	메시지: <jsp:getProperty name="sb" property="msg" />

	</body>
</html>
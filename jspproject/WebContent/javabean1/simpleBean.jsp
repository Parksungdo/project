<%@ page contentType="text/html; charset=euc-kr" %>
<% request.setCharacterEncoding("euc-kr");%>
<%@ page import="javaBean.SimpleBean" %>
<%
	SimpleBean sb1 = new SimpleBean();
//	sb1.msg = "hi";		// ���� �ȵ�(private ���� ������)
	sb1.setMsg("�ȳ�"); 
%>

<jsp:useBean id="sb" class="javaBean.SimpleBean" />
<jsp:setProperty property="*" name="sb"/>

<%-- <jsp:setProperty name="sb" property="msg" />
<jsp:setProperty property="name" name="sb"/> --%>

<html>
	<body>

	<h1>������ �ڹٺ� ���α׷���</h1>
	<br>
	�̸� : <%=sb.getName() %> <br>
	�̸� : <jsp:getProperty property="name" name="sb"/> <br>

	�޽���: <%=sb.getMsg()%> <br>
	�޽���: <jsp:getProperty name="sb" property="msg" />

	</body>
</html>
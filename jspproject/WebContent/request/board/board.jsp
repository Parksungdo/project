<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%
	request.setCharacterEncoding("utf-8");

	String writer = request.getParameter("writer");
	String passwd = request.getParameter("passwd");
	String subject = request.getParameter("subject");
	String content = request.getParameter("content");

	String contents = 
		request.getParameter("content").replace("\n","<br>");
		// replace("\n","<br>") : \n을 <br>태그로 치환시킨다.
%>

작성자 : <%=writer%> <br>
비밀번호 : <%=passwd%> <br>
제목 : <%=subject%> <br>
내용1 : <pre><%=content%></pre> <br><br>
내용2 : <%=contents%> 
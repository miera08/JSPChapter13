<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="chap13.board.BoardDBBean" %>
<%@ page import="chap13.board.BoardDataBean" %>
<%
	//request.getParameter(주소줄에 있는 데이터 값을 가져오는 함숨)
	String sub = request.getParameter("subject");
	String name = request.getParameter("name");
	String email = request.getParameter("email");
	String content = request.getParameter("content");
	String passwd = request.getParameter("passwd");

	System.out.println("subject = "+sub);
	System.out.println("name = "+name);
	System.out.println("email = "+email);
	System.out.println("content = "+content);
	System.out.println("passwd = "+passwd);




	BoardDBBean bdb = BoardDBBean.getInstance();
	bdb.insertDatailArticle(name,sub, email, content,passwd);
// 	bdb.insertAricle(dataBean);

	BoardDataBean dataBean = new BoardDataBean();
	dataBean.setContent(content);
	dataBean.setWriter(name);
	dataBean.setEmail(email);
	dataBean.setPasswd(passwd);
	dataBean.setSubject(sub);

	bdb.insertAricle(dataBean);
	out.println("writePro.jsp");
%>
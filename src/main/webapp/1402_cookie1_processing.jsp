<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Cookie Processing</title>
</head>
<body>
<%
	String user_id = request.getParameter("id");
	String user_pw = request.getParameter("pw");
	String user_cookie = request.getParameter("ck"); // cookie 파라미터를 사용하면 안되
	
	if (user_id.equals("admin") && user_pw.equals("1234")) {
		Cookie cookie_id = new Cookie("userID", user_id);
		Cookie cookie_pw = new Cookie("userPW", user_pw);
		Cookie cookie_ck = new Cookie("userCK", user_cookie);
		
		response.addCookie(cookie_id);
		response.addCookie(cookie_pw);
		response.addCookie(cookie_ck);
		
		response.sendRedirect("1403_cookie1_results.jsp");
	} else {
		out.println("쿠키 생성이 실패했습니다.");
	}
%>
</body>
</html>
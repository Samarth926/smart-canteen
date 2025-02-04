<title>Loggingout...</title>
<%
	session.removeAttribute("uname");
	session.invalidate();
	out.println("<script>alert('Loggedout Successfully');document.location='index.jsp'</script>");
%>
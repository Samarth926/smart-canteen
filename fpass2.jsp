<html>
<head>
	<title>Forgot Password</title>
	<link rel="stylesheet" href="wfs-lgn/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="wfs-lgn/bootstrap-icons/bootstrap-icons.css">
	<style>
		body{
			background-image: url("wfs-lgn/img/bg2.jpg");
			background-size: cover;
			background-position: center;
			background-repeat: no-repeat;
			height: 100vh;
		}
	</style>
</head>
<body>
	
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String un=request.getParameter("uname");
	ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"'");
	if(!rs.next())
	{
		out.println("<script>alert('Invalid Username or Username Not Found');document.location='fpass1.jsp';</script>");
	}
	else
	{
%>	
	<div class="container">
		<div style="margin-top: 30px;" class="row col-md-4 col-md-offset-4">
			<div class="panel panel-danger">
				<div class="panel-heading text-center">
					<h3><i class="bi bi-key-fill"></i> Forgot Password</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="resetpassf.jsp">
						<input type="hidden" name="un" value="<%=un%>">
						<div class="form-group">
							 <label>Security Question</label>
							 <input class="form-control" type="text" readonly="" value='<%=rs.getString("s_question")%>' name="sq">
						</div>
						
						<div class="form-group">
							 <label>Security Answer</label>
							 <input autofocus="on" class="form-control" type="Password" name="sa">
						</div>

						<div align="center">
							<button  type="submit" name="valid" class="btn btn-danger"><i class="bi bi-check2-circle"></i> Next</button>
						</div>
						</form>
				</div>
				<div class="panel-footer">
					<label><a href="index.jsp">Back to Login</a></label>
				</div>
			</div>
		</div>
	</div>
	<% } %>
</body>
</html>
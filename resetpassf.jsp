<html>
<head>
	<title>Reset Password</title>
	<link rel="stylesheet" href="wfs-lgn/bootstrap/css/bootstrap.min.css">
	<link rel="stylesheet" href="wfs-lgn/bootstrap-icons/bootstrap-icons.css">
	<style>
		body{
			background-color: lightgreen;
		}
	</style>
</head>
<body>
	
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
	String un=request.getParameter("un");
	String sa=request.getParameter("sa");
	ResultSet rs=s.stm.executeQuery("select * from login where username='"+un+"' and s_answer='"+sa+"'");
	if(!rs.next())
	{
		out.println("<script>alert('Invalid or Wrong Answer');history.back();</script>");
	}
	else
	{
%>	
	<div class="container">
		<div style="margin-top: 30px;" class="row col-md-4 col-md-offset-4">
			<div class="panel panel-info">
				<div class="panel-heading text-center">
					<h3><i class="bi bi-key-fill"></i> Reset Password</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="resetpass.jsp">
						<input type="hidden" name="un" value="<%=un%>">
						<div class="form-group">
							 <label>New Password</label>
							 <input class="form-control" type="password"  name="np">
						</div>
						
						<div class="form-group">
							 <label>Confirm Password</label>
							 <input class="form-control" type="password"  name="cp">
						</div>
						

						<div align="center">
							<button  type="submit" name="valid" class="btn btn-info"><i class="bi bi-check2-circle"></i> ResetNow</button>
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
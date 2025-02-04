<html>
<head>
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
		ResultSet rs=s.stm.executeQuery("select * from login where u_type='admin'");
		if(rs.next())
		{
	%>
	<title>Sucured Login</title>
	<div class="container">
		<div style="margin-top: 30px;" class="row col-md-4 col-md-offset-4">
			<div style="color: black" class="panel panel-primary">
				<div style="color:white" class="panel-heading text-center">
					<h3><i class="bi bi-key-fill"></i> Login</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="logcheck.jsp">
						<div class="form-group">
							 <label><i class="bi bi-person"></i> User Name</label>
							 <input required="" autocomplete="off" autofocus="on" class="form-control" type="text" placeholder="Username" name="uname">
						</div>
						<div class="form-group">
							 <label for="ln"><i class="bi bi-person"></i> Password</label>
							 <input required=""  id="ln" class="form-control" type="password" placeholder="Password" name="pass">
						</div>

						<div align="center">
							<button  type="submit" name="valid" class="btn btn-primary"><i class="bi bi-check2-circle"></i> Login</button>
						</div>
						
				
				<div class="panel-footer">
					<a style="float: center; text-decoration: none;" href="fpass1.jsp">Forgot Password?</a>
					<br>
					<a style="float: right; text-decoration: none;" href="user-regf.jsp">User Reg.</a> <a style="float: left; text-decoration: none;" href="canteenf.jsp">Canteen Reg.</a>
				</div>
				</form>
				</div>
			</div>
		</div>
	</div>
	<% } else { %>

		<title>Admin Setup</title>
	<div class="container">
		<div style="margin-top: 30px;" class="row col-md-4 col-md-offset-4">
			<div style="color: black" class="panel panel-primary">
				<div style="color:white" class="panel-heading text-center">
					<h3><i class="bi bi-key-fill"></i> Admin Setup</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="adm-stp.jsp">
						<div class="form-group">
							 <label><i class="bi bi-person"></i> User Name</label>
							 <input required="" autocomplete="off" autofocus="on" class="form-control" type="text" placeholder="Username" name="uname">
						</div>
						<div class="form-group">
							 <label for="ln"><i class="bi bi-person"></i>Set Password</label>
							 <input required=""  id="ln" class="form-control" type="password" placeholder="Set Password" name="spass">
						</div>
						<div class="form-group">
							 <label for="ln"><i class="bi bi-person"></i>Confirm Password</label>
							 <input required=""  id="ln" class="form-control" type="password" placeholder="Confirm Password" name="cpass">
						</div>

						<div align="center">
							<button type="submit" name="valid" class="btn btn-primary"><i class="bi bi-check2-circle"></i> Register</button>
						</div>
						</form>
				</div>
			</div>
		</div>
	</div>

	<% } %>
</body>
</html>
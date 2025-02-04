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
	
	
	<div class="container">
		<div style="margin-top: 30px;" class="row col-md-4 col-md-offset-4">
			<div class="panel panel-danger">
				<div class="panel-heading text-center">
					<h3><i class="bi bi-key-fill"></i> Forgot Password</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="fpass2.jsp">
						<div class="form-group">
							 <label><i class="bi bi-person"></i> User Name</label>
							 <input required="" autocomplete="off" class="form-control" type="text" placeholder="Username" name="uname">
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

</body>
</html>
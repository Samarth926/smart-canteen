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
 
	<div class="container">
		<div style="margin-top: 30px;" class="row col-md-6 col-md-offset-3">
			<div style="color: black" class="panel panel-primary">
				<div style="color:white" class="panel-heading text-center">
					<h3><i class="bi bi-person-plus"></i> User Registration</h3>
				</div>
				<div class="panel-body">
					<form method="post" action="user-reg.jsp">

					<div class="form-group col-md-6">
						<label>Firstname</label>
						<input required="" autocomplete="off" class="form-control" type="text" placeholder="Firstname" name="fn">
					</div>

					<div class="form-group col-md-6">
						<label>Lastname</label>
						<input required="" autocomplete="off" class="form-control" type="text" placeholder="Lastname" name="ln">
					</div>

					<div class="form-group col-md-6">
						<label>Email [Username]</label>
						<input required="" autocomplete="off" class="form-control" type="text" placeholder="Email" name="eml">
					</div>

					<div class="form-group col-md-6">
						<label>Mobile</label>
						<input required="" maxlength="10" autocomplete="off" class="form-control" type="text" placeholder="Mobile" name="mn">
					</div>

					<div class="form-group col-md-6">
						<label>City</label>
						<input required="" autocomplete="off" class="form-control" type="text" placeholder="City" name="ct">
					</div>

					<div class="form-group col-md-6">
						<label>Gender</label>
						<select required=""  class="form-control" name="gn">
							<option>-- Select --</option>
							<option>Male</option> <option>Female</option>
						</select>
					</div>

					<div class="form-group col-md-6">
						<label>Date ob Birth</label>
						<input max="2006-12-31" min="1990-01-01" required=""  class="form-control" type="date" placeholder="Mobile" name="dob">
					</div>

					<div class="form-group col-md-6">
						<label>Set Password</label>
						<input required="" autocomplete="off" class="form-control" type="password" placeholder="Set Password" name="sp">
					</div>

						

						<div align="center">
							<button  type="submit" name="valid" class="btn btn-primary"><i class="bi bi-check2-circle"></i> Register</button>
							<button  type="reset" class="btn btn-danger"><i class="bi bi-x"></i> Clear</button>
						</div>
						
				</div>
				<div class="panel-footer">
					<a href="index.jsp">Back to Login</a>
				</div>
				</form>
			</div>
		</div>
	</div>
	
</body>
</html>
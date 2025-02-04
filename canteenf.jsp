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
          <h3><i class="bi bi-person-plus"></i> Canteen Registration</h3>
        </div>
        <div class="panel-body">
          <form method="post" action="canteen-reg.jsp">

          <div class="form-group col-md-6">
            <label>Canteen name</label>
            <input required="" autocomplete="off" class="form-control" type="text" placeholder="Name" name="cn">
          </div>

          <div class="form-group col-md-6">
            <label>Canteen Type</label>
           <select required=""  class="form-control" name="ct">
              <option>-- Select --</option>
              <option>Collage</option> <option>Private</option>
            </select>
          </div>

          <div class="form-group col-md-6">
            <label>Canteen Owener</label>
            <input required="" autocomplete="off" class="form-control" type="text" placeholder="Owner Name" name="co">
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
            <label>Canteen Adress</label>
            <input required="" autocomplete="off" class="form-control" type="text" placeholder="City" name="ca">
          </div>

          <div class="form-group col-md-6">
            <label>Status</label>
            <input readonly="" value="requested"  class="form-control" name="st">
            </select>
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
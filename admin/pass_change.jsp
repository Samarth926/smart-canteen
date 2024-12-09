<%
response.setHeader("Cache Control","no-cache, no-store, must-revalidate");
if (session.getAttribute("uname")==null) 
  {
  out.println("<title>Access Denide...</title> <script>alert('Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
else
{
%>

<jsp:include page="val.jsp"></jsp:include>
<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<!-- Main Content Start -->
        <div class="main-panel">
          <div class="content-wrapper">

                     
            <div class="row">
             
              <div class="col-md-12 col-xl-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">Change Password <a href="home.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="change_pass.jsp">
   <div class="row">
    <div class="form-group col-md-12">
      <label> Old Password </label>
      <input class="validate[required] form-control" placeholder="Old Password" autocomplete="off" autofocus="on" name="op" type="password" id="op" >
    </div>

    <div class="form-group col-md-12">
      <label> New Password </label>
      <input class="validate[required] form-control" placeholder="New Password" name="np" type="password" id="np">
    </div>

    <div class="form-group col-md-12">
      <label> Confirm Password </label>
      <input class="validate[required] form-control" placeholder="Confirm Password" name="cp" type="password" id="cp">
    </div>

    </div>
      <div align="center">
        <button name="valid" class="btn btn-primary" type="submit" >Change </button>      
        <button name="reset" class="btn btn-secondary" type="reset">reset </button> 
      </div>
</form>
</div>
                </div>
              </div>
             
            </div>
           
          </div>
        </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>
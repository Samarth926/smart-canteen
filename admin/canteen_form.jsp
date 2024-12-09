<%
response.setHeader("Cache Control","no-cache, no-store, must-revalidate");
if (session.getAttribute("uname")==null) 
  {
  out.println("<title>Access Denide...</title> <script>alert('Session Expired. Please Re-Login');document.location='../index.jsp';</script>");
}
else
{
%>

<jsp:include page="meta.jsp"></jsp:include>
<jsp:include page="sidebar.jsp"></jsp:include>
<jsp:include page="header.jsp"></jsp:include>
<jsp:include page="val.jsp"></jsp:include> 
<!-- Main Content Start -->
        <div class="main-panel">
          <div class="content-wrapper">

                     
            <div class="row">
             
              <div class="col-md-12 col-xl-12 grid-margin stretch-card">
                <div class="card">
                  <div class="card-body">
                    <h4 class="card-title">canteen Details <a href="canteen_view.jsp" class="btn btn-primary btn-sm">Back</a></h4> 
<form id="WFS_Riz" name="form1" method="post" action="canteen_insert.jsp">

<div class="row">
  <div class="form-group col-md-6">
    <label>Canteen Name</label>
    <input class="validate[required,custom[onlyLetter]] form-control" name="cn" type="text" id="cn">
  </div>

  <div class="form-group col-md-6">
    <label>Canteen  Type</label>
    <select class="validate[required] form-control" name="ct">
      <option value="">-- Select Type --</option>
      <option>College</option> <option>Private</option>
     </select>
  </div>

   <div class="form-group col-md-6">
    <label>Owner</label>
    <input class="validate[required,custom[onlyLetter]] form-control" name="on" type="text" id="on">
  </div>

   <div class="form-group col-md-6">
    <label>Email</label>
    <input class="validate[required,custom[email] form-control" name="el" type="text" id="el">
  </div>

  <div class="form-group col-md-6">
    <label>mobile</label>
    <input class="validate[required,custom[mobile] form-control" name="mn" type="text" id="mn">
  </div>

  <div class="form-group col-md-6">
    <label>Address</label>
    <input class="validate[required] form-control" name="ad" type="text" id="ad">
  </div>

  <div class="form-group col-md-6">
    <label>Status</label>
      <select class="validate[required] form-control" name="st">
     <option value="">--Select Type--</option>
     <option style="color: white">Available</option><option style="color: white">Not-Available</option>
   </select>
  </div>

  <!--<div class="form-group col-md-6">
    <label>Photo1</label>
    <input class="validate[required] form-control" name="pho" type="text" id="pho">
  </div>

  <div class="form-group col-md-6">
    <label>Photo2</label>
  <input class="validate[required] form-control" name="pht" type="text" id="pht">
  </div>
</div>-->


  <div>
    <div colspan="2"><div align="center">
        <input name="valid" type="submit" class="btn btn-success" id="valid" value="Submit">
        <input type="reset" name="Reset" class="btn btn-secondary" value="Reset">
    </div></div>
    </div>
  </table>
</form>
</div>
                </div>
              </div>
             
            </div>
           
          </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>
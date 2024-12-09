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
                    <h4 class="card-title">Select & Upload Photo <a href="canteen_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>

                  
<form id="WFS_Riz" enctype="multipart/form-data" name="form1" method="post" action="canteen_upload_photo.jsp">

<div class="row">
  <div class="form-group col-md-6">
    <label>Select  Photo 1</label>
    <input accept="image/*"  name="photo" type="file" id="photo" required="">
  </div>

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
  </div>

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%}%>
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
                    <h4 class="card-title">Payment Details <a href="pd_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="pd_insert.jsp">
   <div class="row">
    <div class="form-group col-md-6">
      
      <label>Account Holder </label>
      <input class="validate[required,custom[onlyLetter]] form-control" name="ac" type="text" id="ac">
    </div>

    <div class="form-group col-md-6">
      <label>UPI Id </label>
      <input class="validate[required] form-control" name="ui" type="text" id="ui">
    </div>

    <div class="form-group col-md-6">
      <label>UPI Pin </label>
      <input class="validate[required,custom[onlyNumber] form-control" name="up" type="text" id="up">
    </div>

    <div class="form-group col-md-6">
      <label>Amount</label>
      <input class="validate[required,custom[onlyNumber] form-control"s name="am" type="text" id="am">
    </div>

    <div>
      <div colspan="2"><div align="center">
        <input name="valid" class="btn btn-success" type="submit" id="valid" value="Submit">      
        <input name="reset" class="btn btn-secondary" type="reset" id="reset" value="Reset">
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
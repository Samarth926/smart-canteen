
<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String a=request.getParameter("id");
if(a==null){
    out.println("<script>history.back();</script>");
      }
  else{
ResultSet b=s.stm.executeQuery("select * from canteen_details where ct_id='"+a+"'");
b.next();
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
                    <h4 class="card-title">Canteen Details <a href="canteen_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>

<form id="WFS_Riz" name="form1" method="post" action="canteen_update.jsp">
<input type="hidden" id="id" name="id" value="<%=a%>">
<div class="row">
  <div class="form-group col-md-6">
    <label>Canteen Name</label>
    <input class="validate[required,custom[onlyLetter]] form-control" value="<%=b.getString("ct_name")%>" name="cn" type="text" id="cn">
  </div> 
 <div class="form-group col-md-6">
  <label>Canteen  Type</label>
    <select class="validate[required] form-control" name="ct">
      <option value="">--Select Type--</option>
      <option style="color: white">Collage</option>
      <option style="color: white">Private</option>
    </select>
</div>

  <div class="form-group col-md-6">
    <label>Owner</label>
    <input class="validate[required,custom[onlyLetter]] form-control" value="<%=b.getString("ct_owner")%>" name="on" type="text" id="on">
  </div>

 <div class="form-group col-md-6">
    <label>Email</label>
    <input class="validate[required,custom[email] form-control" value="<%=b.getString("ct_email")%>" name="el" type="text" id="el">
  </div>

   <div class="form-group col-md-6">
    <label>mobile</label>
    <input class="validate[required,custom[mobile] form-control" value="<%=b.getString("ct_mobile")%>" name="mn" type="text" id="mn">
  </div>

  <div class="form-group col-md-6">
     <lable>Address</label>
     <input class="validate[required] form-control" value="<%=b.getString("ct_address")%>" name="ad" type="text" id="ad">
   </div>

  <div class="form-group col-md-6">    
    <label>Status</label>
    
          <select class="validate[required] form-control"  name="st" type="radio" value="Available">
            <option value="">--Select Type--</option>
            <option>Available</option>
            <option>Not-Available</option>
      </select>
  </div>

  <!--<div class="form-group col-md-6">
    <lable>Photo1</label>
    <input class="validate[required] form-control" value="<%=b.getString("ct_photo1")%>" name="pho" type="text" id="pho">
  </div>

  <div class="form-group col-md-6">
    <label>Photo2</label>
    <input class="validate[required] form-control" value="<%=b.getString("ct_photo2")%>" name="pht" type="text" id="pht">
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
<%
}
%>

</div>
                </div>
              </div>
             
            </div>
           
          </div>
  

<!-- Main Content End -->
<jsp:include page="footer.jsp"></jsp:include>
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%@page import="java.util.Date"%>
<% 
Date d=new Date();
int dd=d.getDate();
 int mm=d.getMonth()+1;
 int yy=d.getYear()+1900;
 String td=yy+"-"+mm+"-"+dd;
String id=request.getParameter("id");
if(id==null)
{
out.println("<script>history.back();</script>");
}
else{
ResultSet z=s.stm.executeQuery("select * from complaints where cm_id='"+id+"'");
z.next();
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
                    <h4 class="card-title">Complaints Detail <a href="cmp_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="cmp_update.jsp">
<input type="hidden" value="<%=id%>" name="id">
  <div class="row">
  <div class="form-group col-md-6">
      <label>User id</label>
      <input class="validate[required] form-control" value="<%=z.getString("u_id")%>" name="ud" type="text" id="ud">
    </div>
    <div class="form-group col-md-6">
      <label>Cateen id</label>
      <input class="validate[required] form-control" value="<%=z.getString("ct_id")%>"  name="ci" type="text" id="ci">
    </div>
    <div class="form-group col-md-6">
      <label>Complaints</label>
      <input class="validate[required] form-control" value="<%=z.getString("complaints")%>"  name="cm" type="text" id="cm">
    </div>
    <div class="form-group col-md-6">
      <label>Complaints date</label>
      <input class="validate[required,custom[date]] form-control" value="<%=td%>"  name="cd" type="text" id="cd">
    </div>
  </div>
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

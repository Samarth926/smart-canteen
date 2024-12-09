<%@page import="java.util.Date"%>
<%@page import="java.sql.*"%>
<%@page import="canteen.dbconnect"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
 Date d=new Date();
  int dd,mm,yy;
  dd=d.getDate();
  mm=d.getMonth()+1;
  yy=d.getYear()+1900;
  String td=yy+"-"+mm+"-"+dd;
  
  String id=request.getParameter("id");
  if(id==null)
  {
  out.println("<script>history.back();</script>;");
  }
  else
  {
  ResultSet a=s.stm.executeQuery("select * from review where r_id='"+id+"'");
  a.next();
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
                    <h4 class="card-title">Review Detail <a href="review_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="review_update.jsp">
<input type="hidden" id="id" name="id" value="<%=id%>">
  
  <div class="row">
    <div class="form-group col-md-6">
      <label>User  </label>
      <input class="validate[required] form-control" value="<%=a.getString("u_id")%>" name="ui" type="text" id="ui">
    </div>
    <div class="form-group col-md-6">
      <label>Dish </label>
      <input class="validate[required] form-control" value="<%=a.getString("d_id")%>" name="di" type="text" id="di">
    </div>
    <div class="form-group col-md-6">
      <label>Review</label>
      <input class="validate[required,custom[onlyLetter]] form-control" value="<%=a.getString("review")%>" name="rw" type="text" id="rw">
    </div>
    <div class="form-group col-md-6">
      <label>Rating</label>
      <input class="validate[required] form-control" value="<%=a.getString("rating")%>" name="rt" type="text" id="rt">
    </div>
    <div class="form-group col-md-6">
      <label>Date</label>
      <input class="validate[required,custom[date]] form-control" name="dt" type="text" id="dt" value="<%=td%>">
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
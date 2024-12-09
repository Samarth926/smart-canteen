<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>
<%
String id=request.getParameter("id");
if(id==null){
out.println("<script>history.back();</script>");
}
else{
ResultSet a=s.stm.executeQuery("select * from	notice where n_id='"+id+"'");
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
                    <h4 class="card-title">Notice Detail <a href="notice_view.jsp" class="btn btn-primary btn-sm">Back</a></h4>
<form id="WFS_Riz" name="form1" method="post" action="notice_update.jsp">
<input type="hidden" name="id" value="<%=id%>" id="id">
  
    <div class="row">
    <div class="form-group col-md-6">
      <label>Notice From </label>
      <input class="validate[required,custom[onlyLetter]] form-control" value="<%=a.getString("n_form")%>" name="nf" type="text" id="nf">
    </div>
  
    <div class="form-group col-md-6">
      <label> Notice To</label>
      <input class="validate[required] form-control" value="<%=a.getString("n_to")%>" name="nt" type="text" id="nt">
    </div>
  
    <div class="form-group col-md-6">
      <label>Notice </label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("notice")%>" name="n" type="text" id="n">
    </div>
  
    <div class="form-group col-md-6">
      <label>Sent Date</label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("s_date")%>" name="sd" type="text" id="sd">
    </div>

    <div class="form-group col-md-6">
      <label>Status</label>
      <input class="validate[required,custom[onlyNumber] form-control" value="<%=a.getString("status")%>" name="st" type="text" id="st">
    </div>

  </div>
    <div>
      <div colspan="2"><div align="center">
        <input name="valid" type="submit" class="btn btn-success" id="valid" value="Submit">      
        <input name="reset" type="reset" class="btn btn-secondary" id="reset" value="Reset">
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
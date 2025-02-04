<title>Processing....</title>

<%@page import="canteen.dbconnect"%>
<%@page import="java.sql.*"%>
<jsp:useBean id="s" class="canteen.dbconnect"/>
<jsp:getProperty name="s" property="conn"/>

<%
String chk=request.getParameter("valid");
if(chk==null){
out.println("<script>history.back();</script>");
}
else
{
	String a=request.getParameter("fn");
	String b=request.getParameter("ln");
	String c=request.getParameter("eml");
	String d=request.getParameter("mn");
	String e=request.getParameter("ct");
	String f=request.getParameter("gn");
	String g=request.getParameter("dob");
	String sp=request.getParameter("sp");


	ResultSet rs=s.stm.executeQuery("select * from user_details where u_email='"+c+"'");
	if(rs.next())
	{
		out.println("<script>alert('Email Alredy Used or Exists');history.back();</script>");
	}
	else
	{ 
		ResultSet rs1=s.stm.executeQuery("select * from user_details  where u_mobile='"+d+"'");
		if(rs1.next())
			{

				out.println("<script>alert('Mobile No. Alredy Used or Exists');history.back();</script>");
			}
			else
			{
				int z=s.stm.executeUpdate("insert into user_details values(null,'"+a+"','"+b+"','"+c+"','"+d+"','"+e+"','"+f+"','"+g+"','noimg.png')");
				int z1=s.stm.executeUpdate("insert into login values('"+c+"','"+sp+"','user','-','-','active')");
				out.println("<script>alert('You have Registred Successfully');alert('Username is Reg. Email');document.location='index.jsp';</script>");
			}

	}
}
%>
 
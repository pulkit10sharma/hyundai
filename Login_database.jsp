<%@ page import="java.sql.*"%>
<%
Connection con=null;
Statement st=null;

String uname=request.getParameter("name");
String email=request.getParameter("email");
String mob_num=request.getParameter("mob_num");
String Gender=request.getParameter("gender");
String Licence=request.getParameter("dl");
String city=request.getParameter("city");
try{
	Class.forName("com.mysql.jdbc.Driver");
	con=DriverManager.getConnection("jdbc:mysql://localhost:3306/glauniversity?characterEncoding=utf8","root","root");
	st=con.createStatement();
	String query="Insert into apply values('"+uname+"','"+email+"','"+mob_num+"','"+Gender+"','"+Licence+"','"+city+"')";
	st.executeUpdate(query);
	out.println("Data Submitted Sucessfully");
} 
catch(Exception e)
{
	out.println(e);
}
%>




<%@ page import="java.sql.*" %>
<%
Connection conn=null;
Statement st=null;

String name = request.getParameter("name");
String email = request.getParameter("email");
String mobile = request.getParameter("mob");
String pass = request.getParameter("password");
String address = request.getParameter("address");

out.println(name);
try{
Class.forName("com.mysql.jdbc.Driver");
out.println("");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/glauniversity?characterEncoding=utf8","root","root");
st=conn.createStatement();
String query="Insert into register values('"+name+"','"+email+"','"+mobile+"','"+pass+"','"+address+"')";
st.executeUpdate(query);
response.sendRedirect("login.html");
}
catch(Exception e){
    out.println(e);
}
%>
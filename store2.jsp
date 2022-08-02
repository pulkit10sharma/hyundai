<%@ page import="java.sql.*" %>
<%
Connection conn=null;
Statement st=null;

String email = request.getParameter("email");
String message = request.getParameter("msg");


try{
Class.forName("com.mysql.jdbc.Driver");
conn=DriverManager.getConnection("jdbc:mysql://localhost:3306/glauniversity?characterEncoding=utf8","root","root");
st=conn.createStatement();
String query="Insert into contact values('"+email+"','"+message+"')";
st.executeUpdate(query);
response.sendRedirect("contact.html");
}
catch(Exception e){
    out.println(e);
}
%>
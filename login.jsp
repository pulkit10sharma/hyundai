<%@ page import="java.sql.*" %>

<%
Connection con=null;
ResultSet rs=null;
Statement st=null;

String email=request.getParameter("email");
String pass=request.getParameter("password");

try{
    Class.forName("com.mysql.jdbc.Driver");
    con=DriverManager.getConnection("jdbc:mysql://localhost:3306/glauniversity?characterEncoding=utf8","root","root");
    st=con.createStatement();
    String query="Select email,pass from register where email='"+email+"' and pass='"+pass+"'";
    rs=st.executeQuery(query);

    if(rs.next())
    {
        response.sendRedirect("home.html");
    }
    else{
        response.sendRedirect("login.html");
    }
}
catch(Exception e){
    out.println(e);
}
%>
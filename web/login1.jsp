<%-- 
    Document   : login1.jsp
    Created on : Jul 2, 2015, 6:45:46 AM
    Author     : windya yasas
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
     
    </head>
    <body>
        <%@include file="DB_Connector.jsp" %>
        <%
            
String user=request.getParameter("log");
String pass=request.getParameter("pwd");
String name="";
String UserID="";

     
      
      Statement stat = conn.createStatement();
      stat = conn.createStatement();
 try{
      //STEP 2: Register JDBC driver
      
      String sql = "SELECT * FROM employee where username='"+user+"' and  Password='"+pass+"'";
      
      try
        {
          ResultSet rs = stat.executeQuery(sql);
          int count= 0;
          while(rs.next())
          {
            name=rs.getString("username");
            pass=rs.getString("password");
            UserID=rs.getString("EmpID");

            count++;
          }
          session.setAttribute("userid", UserID);
          session.setAttribute("EmpUserName",name);
          if(count==1)
          {
          String ID= UserID.substring(0,2);
          System.out.println(ID);
        
            if("em".equals(ID))
          {
                
               response.sendRedirect("index.jsp");
                
               
                
          }
            if("st".equals(ID))
           {
                
                
                
               
                
          }
            
          }
          else
          {
              
          
          }
        }
           catch(Exception e)
                {
                
                   
                }
     
   }catch(Exception e){
      //Handle errors for Class.forName
      e.printStackTrace();
   }finally{
      //finally block used to close resources
      try{
         if(stat!=null)
            conn.close();
      }catch(SQLException se){
      }// do nothing
      try{
         if(conn!=null)
            conn.close();
      }catch(SQLException se){
         se.printStackTrace();
      }//end finally try
   }//end try
   System.out.println("Goodbye!");
   
%>
    </body>
</html>
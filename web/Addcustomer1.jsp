<%-- 
    Document   : AddSpareparts
    Created on : Jun 30, 2015, 5:46:57 PM
    Author     : windya yasas
--%>

<%@page import="javax.swing.JOptionPane"%>
<%@page import="javax.servlet.*"%>
<%@page import="javax.servlet.http.*"%>
<%@page import="java.sql.*"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>


<!DOCTYPE html>
<html>
    <head>
        
    </head>
    <body>
         <%@include file="DB_Connector.jsp"%>
        
         
       
        <%
           
       
    
         
          String fname=request.getParameter("fname");
          String lname=request.getParameter("lname");
          String BDay=request.getParameter("BDay");
          String nic=request.getParameter("nic");
          String Address=request.getParameter("Address");
          double tel=Double.parseDouble(request.getParameter("tel"));
          String email=request.getParameter("email");
          String role=request.getParameter("role");
          
          
        
        
        
        
      //Increament ID    
      Statement stmt1 = conn.createStatement();
      int id=0;
      String RID="";
      if (role.equals("Customer"))
      {
          RID="CS";
      }
      else if(role.equals("Supplier"))
      {
         RID="SU"; 
      }
      else if(role.equals("Employee"))
      {
         RID="EM"; 
      }
      else if(role.equals("Administrator"))
      {
         RID="AD"; 
      }
      else if(role.equals("DataEntryOperator"))
      {
         RID="DE"; 
      }
      
      String userC="CS";
      try{
      stmt1 = conn.createStatement();
      String sql = "SELECT userID FROM user WHERE userID LIKE '"+RID+"%' ORDER BY userID DESC LIMIT 1 ";
      ResultSet rs = stmt1.executeQuery(sql);
      //where userID LIKE 'CS'
      
  
         while(rs.next())
            {    
                userC = rs.getString("userID");
            }
         rs.close();
     }      
      catch(SQLException se){      
            se.printStackTrace();
      } 
     id=Integer.parseInt(userC.substring(2));
     id=id+1;
     String userID=RID+""+id;
      //End Of Increament Id
     
     String fullname=fname+" "+lname;
     String password=userID;
     String nameWithIni="jkoj";
     String username=userID;
     double salary=0;
     double accBalance =0;
   
                 
            
            
          
         try
          { 
             Statement stat=conn.createStatement();
             
             String sql="INSERT INTO `gajanayake`.`user`(`userID`,`fname`,`BDay`,`tel`,`Address`,`lname`,`password`,`Email`,`NIC`,`nameWithIni`,`salary`,`AccBalance`,`"+role+"`,`username`) VALUES('"+userID+"','"+fname+"','"+BDay+"','"+tel+"','"+Address+"','"+lname+"','"+password+"','"+email+"','"+nic+"','"+nameWithIni+"','"+salary+"','"+accBalance+"','1','"+username+"')";
             stat.executeUpdate(sql);
             %><%="Successfuly Added"%><%
             
             
          
             
          }
          catch(Exception e)
          {
             e.printStackTrace();
          }
  
        %>
    </body>
</html>

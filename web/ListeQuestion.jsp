<%-- 
    Document   : ListeCours
    Created on : 2015-11-24, 08:37:21
    Author     : usager
--%>


<%@page import="java.util.ListIterator"%>
<%@page import="com.projet.classe.Question"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="com.projet.classe.Groupe"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <%
            List<Question> lq = new LinkedList<Question>();
            lq = (List<Question>)session.getAttribute("listeQ");
            
             
          
      %>
    <meta charset="utf-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="css/bootstrap.min.css" rel="stylesheet">
     <link href="css/style.css" rel="stylesheet">
  </head>
  <body>
      
      <div id="conteneur">
      <table>
          <tr>
              <th>Question</th>
              <th>Reponse</th>
              
          </tr>
          <%
           
            for(int i= 0;i<lq.size();i++ ){
             out.println("<tr><td>"+lq.get(i).getTxtQuestion()+"</td><td>"+lq.get(i).getReponse()+"</td></tr>");
            }
            
          %>
      </table>    
      </div>

<script src="js/jquery-2.1.4.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="js/bootstrap.min.js"></script>
  </body>


  
</html>
<%-- 
    Document   : ListeQuizz
    Created on : 2015-11-27, 08:40:40
    Author     : usager
--%>

<%-- 
    Document   : ListeCours
    Created on : 2015-11-24, 08:37:21
    Author     : usager
--%>


<%@page import="java.util.ListIterator"%>
<%@page import="com.projet.classe.Quiz"%>
<%@page import="java.util.LinkedList"%>
<%@page import="java.util.List"%>
<%@page import="com.projet.classe.Groupe"%>
<!DOCTYPE html>
<html lang="en">
  <head>
      <%
            List<Quiz> lc = new LinkedList<Quiz>();
            lc = (List<Quiz>)session.getAttribute("listeQu");
            
             
          
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
              <th>Numero du quizz  : </th>
              <th> Numero du cours : </th>
              <th>identifiant      : </th>
              <th> Nombre d'essais : </th>

          </tr>
          	 

          <%
            for(int i= 0;i<lc.size();i++ ){
             out.println("<tr><td>"+lc.get(i).getId()+"</td><td>"+lc.get(i).getIdCours()+"</td><td>"+lc.get(i).getIdUser()+"</td><td>"+lc.get(i).getNbEssais()+"</td><td><a href='consulterG.do?action=faireunQuizz&id="+lc.get(i).getIdCours()+"' class=\"btn btn-info\" >Consulter le quiz</a></td></tr>");
            }
            
          %>
      </table>    
      </div>

<script src="js/jquery-2.1.4.js"></script>
    <!-- Include all compiled plugins (below), or include individual files as needed -->
   <script src="js/bootstrap.min.js"></script>
  </body>


  
</html>